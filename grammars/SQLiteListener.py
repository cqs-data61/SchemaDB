# Generated from SQLiteParser.g4 by ANTLR 4.9.2
from antlr4 import *
import networkx as nx
import inspect
if __name__ is not None and "." in __name__:
    from .SQLiteParser import SQLiteParser
    from .SQLiteParserListener import SQLiteParserListener
else:
    from SQLiteParser import SQLiteParser
    from SQLiteParserListener import SQLiteParserListener
    
class SQLiteListener(SQLiteParserListener):
    ##
    def __init__(self):
        self.dbgraph = nx.MultiDiGraph()
        self.dbgraph.graph['cmap'] = []
        self.dbgraph.graph['dbname'] = None
        self.dbdual = nx.MultiDiGraph()
        self.curtable = None
        self.curcolct = 0
    
    def enterCreate_table_stmt(self, ctx:SQLiteParser.Create_table_stmtContext):
        try:
            tn = ctx.tn.getText().split('.')[-1]
            if tn.startswith(('`',"'",'"')):
                tn = tn[1:-1]
            tn = tn.lower()
        except:
            print("failed table name")
        self.curtable = tn
        self.curcolct = 0
        self.dbgraph.add_node(tn, node_type = 'table')
        self.dbdual.add_node(tn, node_type = 'table')
        self.dbgraph.graph['cmap'].append('red')
    
    def enterColumn_def(self, ctx:SQLiteParser.Column_defContext):
        try:
            cn = ctx.cn.getText()
            if cn.startswith(('`',"'",'"')):
                cn = cn[1:-1]
            cn = cn.lower()
        except:
            print("failed column name")
        dt = ctx.dt
        
        try:
            dtN = dt.dtN[0].getText().upper()
            if dtN.startswith(('`',"'",'"')):
                dtN = dtN[1:-1]
        except Exception as e:
            print("failed column type", e)
        if dt.dtS is not None:
            try:
                dtS = dt.dtS.getText()
            except:
                print("fail on S")
        elif len(dt.dtSS) > 0:
            try:
                dtSS = [ss.getText() for ss in dt.dtSS]
                dtS = ",".join(dtSS)
            except Exception as e:
                print("fail on S,S")
        else:
            dtS = None
            
        if dtN == "UUID":
            dtN = "VARCHAR"
            dtS = "36"
        if dtN == "SEASON":
            dtN == "VARCHAR"
        nodeid = self.curtable + '.' + cn
        self.dbgraph.add_node(nodeid, node_type = 'column',\
                             col_name = cn, col_type = dtN, col_size = dtS, \
                             col_pos = self.curcolct)
        self.dbgraph.add_edge(self.curtable, nodeid)
        self.dbgraph.graph['cmap'].append('blue')
        self.curcolct += 1
        
        
        if ctx.cc is not None and 'primary' in ctx.cc.getText().lower():
            self.dbgraph.nodes[self.curtable]['pkey'] = [cn]
    
    def enterTable_constraint(self, ctx:SQLiteParser.Table_constraintContext):
        if len(ctx.pkey) > 0: #primary key
            try:
                pkeys = [pk.getText().lower() for pk in ctx.pkey]
            except:
                print("failed on pkey")
            if pkeys[0].startswith(('`',"'",'"')):
                pkeys = [pkey[1:-1] for pkey in pkeys]
            self.dbgraph.nodes[self.curtable]['pkey'] = pkeys
            
        elif ctx.fkey is not None: #fkey
            # get columns referencing columns          
            try:
                fkeys = [fk.getText().lower() for fk in ctx.fkey]
            except:
                print("failed on fkeys")
            if fkeys[0].startswith(('`',"'",'"')):
                fkeys = [fkey[1:-1] for fkey in fkeys]
            
            # get referenced table and columns
            
            reftable = ctx.fkc.reft.getText().lower().split('.')
            refdb = None
            if len(reftable) > 1:
                print("splitting reftable")
                refdb = reftable[0]
                if refdb.startswith(('`',"'",'"')):
                    refdb = refdb[1:-1]
            reftable = reftable[-1]
            if reftable.startswith(('`',"'",'"')):
                reftable = reftable[1:-1]
            if reftable not in self.dbgraph.nodes():
                #BAIL!
                return
            try:
                if ctx.fkc.refc is not None:
                    refcols = [refc.getText().lower() for refc in ctx.fkc.refc]
                    if refcols[0].startswith(('`',"'",'"')):
                        refcols = [refcol[1:-1] for refcol in refcols]
                else:
                    refcols = fkeys[:]
            except:
                print("failed get refcols")
                
            # get node name
            if ctx.cname is not None:
                name = ctx.cname.getText()
                if name.startswith(('`',"'",'"')):
                    name = name[1:-1]
            else:
                name = "fkeycon_" + self.curtable + "_to_" + reftable
            # create node
            self.dbgraph.add_node(name, node_type = 'fkey', refer = [], refed = [], refed_t = reftable, refdb = refdb)
            self.dbgraph.graph['cmap'].append('green')
            
            if len(fkeys) != len(refcols):
                raise Exception('Number of referencing columns does not match number of referenced columns')
            cols = [self.dbgraph.nodes()[edge[1]]['col_name'] for edge in self.dbgraph.edges(self.curtable)]
            destcols = [self.dbgraph.nodes()[edge[1]]['col_name'] for edge in self.dbgraph.edges(reftable)]
            for fkey in fkeys:
                if fkey not in cols:
                    raise Exception("Malformed foreign key: column not in table")
            for refcol in refcols:
                if refcol not in destcols:
                    raise Exception("Malformed foreign key: column not in destination table")
                    
            # add edges
            try:
                for i in range(len(fkeys)):
                    refer = self.curtable + '.' + fkeys[i]
                    refed = reftable + "." + refcols[i]

                    self.dbgraph.add_edge(refer, name)
                    self.dbgraph.add_edge(name, refed)
                    self.dbgraph.nodes()[name]['refer'].append(fkeys[i])
                    self.dbgraph.nodes()[name]['refed'].append(refcols[i])

                    # for topological sorting
                    self.dbdual.add_edge(reftable, self.curtable)
            except:
                print("failed to add edges")
        else: #check/unique - do nothing for the moment
            pass
        pass
        
