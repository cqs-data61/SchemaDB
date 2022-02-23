import networkx as nx
from antlr4 import *
import grammars as gms
import tqdm as tq
import multiprocessing as mp
from itertools import repeat
from functools import partial
import os
import shutil
import re
import numpy as np
import pandas as pd
import chardet
import pickle

class CaseChangingStream():
    """ Capitalise all reserve word tokens
    """
    def __init__(self, stream, upper):
        self._stream = stream
        self._upper = upper

    def __getattr__(self, name):
        return self._stream.__getattribute__(name)

    def LA(self, offset):
        c = self._stream.LA(offset)
        if c <= 0:
            return c
        return ord(chr(c).upper() if self._upper else chr(c).lower())
    
def db_to_sqldump(db, dual, out = './schemas/'):
    """ Provided a database graph db, and it's dual (tables only), 
        outputs valid mysql schema files with no extraneous clauses
        to the directory specified by out.
    """ 
    ## Dump to SQL/CSV
    if db.graph['dbname'] is not None:
        dbname = db.graph['dbname'].replace('-','_')
    else:
        dbname = 'schema'
    sql_top = ["DROP DATABASE IF EXISTS " + dbname + ";", \
               "\nCREATE DATABASE " + dbname + ";", \
               "\nUSE " + dbname + ";"]
    enums = []
    sql = []
    dual.remove_edges_from(nx.selfloop_edges(dual))
    tables = list(nx.topological_sort(dual))
    for table in tables:
        t_node = db.nodes()[table]
        sql.append("\nCREATE TABLE \"" + table + "\" (")
        cols = [e[1] for e in list(db.edges(table))]
        for i in range(len(cols)):
            if i > 0:
                sql.append(",")
            dbnode = db.nodes()[cols[i]]
            cName = dbnode['col_name']
            nType = dbnode['col_type']
            sql.append("\n\t\"" + cName + "\" " + nType)
            if dbnode['col_size']:
                sql.append("(" + dbnode['col_size'] + ")")
        
        if 'pkey' in db.nodes()[table]:
            sql.append(",\n\t PRIMARY KEY (\"" + ",".join(db.nodes()[table]['pkey']) + "\")")

        fkeys = list(set([fkey[1] for fkey in db.edges([e[1] for e in db.edges(table)])]))
        for i in range(len(fkeys)):
            sql.append(",\n\t CONSTRAINT \"" + fkeys[i] + \
                       "\" FOREIGN KEY (\"" + ",".join(db.nodes()[fkeys[i]]['refer']) + \
                       "\") REFERENCES \"" + db.nodes()[fkeys[i]]['refed_t'] + \
                       "\" (\"" + ",".join(db.nodes()[fkeys[i]]['refed']) + "\")")
        sql.append("\n);\n") # ENGINE=InnoDB DEFAULT CHARSET=utf8;\n")
    
    sql_top.extend(enums)
    sql_top.extend(sql)
    if os.path.isfile(out + db.graph['fname'] + '.sql'):
        print('MP ERROR: File exists')
        db.graph['fname'] += '_dup'
    with open(out + db.graph['fname'] + '.sql', 'w') as fp:
        fp.writelines(sql_top)
    fp.close()
    
class MyErrorStrategy(BailErrorStrategy):
    """ More aggressive ANTLR4 error handler.
        Default handler will always attempt to keep parsing,
        this one will immediately bounce out on a token failure.
    """
    def recover(self, recognizer:Parser, e:RecognitionException):
        recognizer._errHandler.reportError(recognizer,e)
        super().recover(recognizer,e)
        
def attemptParse(f, sqlfile):
    """ Attempt to parse sqlfile (given as an already open file object f)
        with Postgres, then MySQL, the SQLite (this should probably be reordered)
        Upon successful parse, walk the parse tree and construct the graph ready
        for MySQL dumping.
    """
    printer = None
    walker = ParseTreeWalker()
    try: # Postgres
        f.seek(0)
        inputStream_r = InputStream(f.read())
        inputStream = CaseChangingStream(inputStream_r, True)
        lexer = gms.postgreSQLLexer.postgreSQLLexer(inputStream)
        stream = CommonTokenStream(lexer)
        parser = gms.postgreSQLParser.postgreSQLParser(stream)
        parser._errHandler = MyErrorStrategy()
        lexer.removeErrorListeners()
        parser.removeErrorListeners()
        tree = parser.sql()
        graph = gms.postgreSQLListener.postgreSQLListener()
        #print("PARSED", sqlfile, "with Postgres")
        try:
            walker.walk(graph, tree)
        except BaseException as e:
            print("**\tpostgres walking error:", sqlfile, e)
        if graph.dbgraph.graph['dbname'] is None:
            graph.dbgraph.graph['dbname'] = f.name.split("/")[2]
        return graph.dbgraph, graph.dbdual
    except BaseException as e:
        #print("pg", e)
        pass
    try: # MySql 
        f.seek(0)
        inputStream_r = InputStream(f.read())
        inputStream = CaseChangingStream(inputStream_r, True)
        lexer = gms.MySqlLexer.MySqlLexer(inputStream)
        stream = CommonTokenStream(lexer)
        parser = gms.MySqlParser.MySqlParser(stream)
        parser._errHandler = MyErrorStrategy()
        lexer.removeErrorListeners()
        parser.removeErrorListeners()
        graph = gms.MySqlListener.MySqlListener()
        tree = parser.root()
        #print("PARSED", sqlfile, "with MySql")
        try:
            walker.walk(graph, tree)
        except BaseException as e:
            print("**\tmysql walking error:", sqlfile, e)
        if graph.dbgraph.graph['dbname'] is None:
            graph.dbgraph.graph['dbname'] = f.name.split("/")[2]
        return graph.dbgraph, graph.dbdual
    except BaseException as e:
        #print("mysql", e)
        pass
    try: #SQLite
        f.seek(0)
        inputStream_r = InputStream(f.read())
        inputStream = CaseChangingStream(inputStream_r, True)
        lexer = gms.SQLiteLexer.SQLiteLexer(inputStream)
        stream = CommonTokenStream(lexer)
        parser = gms.SQLiteParser.SQLiteParser(stream)
        parser._errHandler = MyErrorStrategy()
        lexer.removeErrorListeners()
        parser.removeErrorListeners()
        graph = gms.SQLiteListener.SQLiteListener()
        tree = parser.parse()
        #print("PARSED", sqlfile, "with SQLite")
        try:
            walker.walk(graph, tree)
        except BaseException as e:
            print("**\tsqlite walking error:", sqlfile, e)
        if graph.dbgraph.graph['dbname'] is None:
            graph.dbgraph.graph['dbname'] = f.name.split("/")[2]
        return graph.dbgraph, graph.dbdual
    except BaseException as e:
        #print("sqlite", e)
        pass
    return None, None

def find_parse_repo(repo, repo_idx, lock):
    """ Searched a provided repo for the most promising candidate sql file
        (the one with most tables and fkeys relatively)
        And attempts to open it - if successful, parse, graphify, and dump
    """
    max_tables = 1
    max_fkeys = 1
    cand_cnt = 0
    repo_schema = ''
    schema_enc = ''
    for subdir, fdir, files in os.walk(repo):
        for file in files:
            sqlfile = subdir + "/" + file
            try:
                with open(sqlfile) as f:
                    text = f.read().lower()
                    tabs = text.count('create table')
                    fkeys = text.count('foreign')
                    if tabs > 1 and tabs > max_tables and fkeys >= max_fkeys:
                        #print("updating repo schema to", sqlfile, tabs, fkeys)
                        repo_schema = sqlfile
                        schema_enc = 'utf'
                        max_tables = tabs
                        max_fkeys = fkeys
                    cand_cnt += 1
            except UnicodeDecodeError:
                try:
                    with open(sqlfile, encoding='utf-16') as f:
                        text = f.read().lower()
                        tabs = text.count('create table')
                        fkeys = text.count('foreign')
                        if tabs > 1 and tabs > max_tables and fkeys >= max_fkeys:
                            #print("updating repo schema to", sqlfile, tabs, fkeys)
                            repo_schema = sqlfile
                            schema_enc = 'utf-16'
                            max_tables = tabs
                            max_fkeys = fkeys
                        cand_cnt += 1
                except Exception as e:
                    continue
            except Exception as e:
                continue
    if repo_schema:
        with open(repo_schema, encoding=schema_enc) as f:
            dbgraph, dbdual = attemptParse(f, repo_schema)
            if dbgraph is not None:
                lock.acquire()
                idx = repo_idx.value
                repo_idx.value += 1
                lock.release()
                #print(repo_schema, "released")
                dbgraph.graph['fname'] = 'schema' + str(idx)
                #print("dumping", dbgraph.graph['fname'])
                db_to_sqldump(dbgraph, dbdual)  
                #print("dumped", dbgraph.graph['fname'])
    return cand_cnt
                
def run(repodir, dumpdir):
    """ Go!
    """
    if not os.path.isdir(dumpdir):
        try:
            os.mkdir(dumpdir)
        except:
            print('Could not create output dir')
            return

    mpman = mp.Manager()
    repo_idx = mpman.Value('i', 0)
    lock = mpman.Lock()
    repos = set(os.listdir(repodir))
    repos = [repodir + repo for repo in repos]
    with mp.Pool(7) as p:
        try:
            res = list(p.imap(partial(find_parse_repo, repo_idx=repo_idx, lock=lock), repos))
        except Exception as e:
            print("Error", e, type(e))
        # try:
        #     p.starmap(find_parse_repo, zip(repos, repeat(repo_idx), repeat(lock)))
        # except Exception as e:
        #     print(e)
            
if __name__ == "__main__":
    repodir = './repos/'
    dumpdir = './schemas/'
    res = run(repodir, dumpdir)
    pickle.dump(res, open("repocands.p", "wb"))