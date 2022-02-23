from antlr4 import *
import networkx as nx
import inspect
if __name__ is not None and "." in __name__:
    from .postgreSQLParser import postgreSQLParser
    from .postgreSQLParserListener import postgreSQLParserListener
else:
    from postgreSQLParser import postgreSQLParser
    from postgreSQLParserListener import postgreSQLParserListener

class postgreSQLListener(postgreSQLParserListener):
    ##
    def __init__(self):
        self.dbgraph = nx.MultiDiGraph()
        self.dbgraph.graph['cmap'] = []
        self.dbgraph.graph['dbname'] = None
        self.dbgraph.graph['enums'] = {}
        self.dbdual = nx.MultiDiGraph()
        self.curtable = None
        self.curcolct = 0
        
    def enterCreate_type_statement(self, ctx:postgreSQLParser.Create_type_statementContext):
        try:
            elist = [enum.getText() for enum in ctx.enums]
            elist = [e[1:-1] if e.startswith(('`',"'",'"')) else e for e in elist]
            self.dbgraph.graph['enums'][ctx.tname.getText().lower()] = elist
        except:
            print("failed on create enum")
    
    def enterCreate_database_statement(self, ctx:postgreSQLParser.Create_database_statementContext):
        # try:
        #     dbn = ctx.dbname.getText()
        #     dbn = dbn[1:-1] if dbn.startswith(('`',"'",'"')) else dbn.lower()
        # except:
        #     print("failed on dbname")
        pass
        
        
    def enterCreate_schema_statement(self, ctx:postgreSQLParser.Create_schema_statementContext):
        pass
#         print(ctx.schname.getText())
#         if not self.dbgraph.graph['dbname']:
#             try:
#                 scn = ctx.schname.getText()
#             except:
#                 try:
#                     scn = ctx.schname.text
#                 except:
#                     print("failed on schema name")
#                     return
#         if scn.startswith(('`',"'",'"')):
#             scn = scn[1:-1]
#         self.dbgraph.graph['dbname'] = scn
    
    def enterCreate_table_statement(self, ctx:postgreSQLParser.Create_table_statementContext):
        if ctx.part is None:
            try:
                tn = ctx.tn.getText().split('.')[-1]
                tn = tn[1:-1] if tn.startswith(('`',"'",'"')) else tn.lower()
            except:
                print("failed cr table name")

            self.curtable = tn
            self.curcolct = 0
            self.dbgraph.add_node(tn, node_type = 'table')
            self.dbdual.add_node(tn, node_type = 'table')
            self.dbgraph.graph['cmap'].append('red')
    
    def enterTable_column_definition(self, ctx:postgreSQLParser.Table_column_definitionContext):
        try:
            cn = ctx.cn.getText()
            cn = cn[1:-1] if cn.startswith(('`',"'",'"')) else cn.lower()
        except:
            print("failed column name")
        dt = ctx.dt.predefined_type()
        try:
            dtN = " ".join([child.getText() for child in dt.children])
            dtN = dtN.split('(')[0].upper().rstrip()
        except:
            print("fail on dtN")
        if dtN.endswith('2'):
            dtN = 'VARCHAR'
        if dt.dlen is not None:
            try:
                dtS = dt.dlen.getText()[1:-1]
            except:
                print("fail on dts dlen")
        elif dt.prec is not None:
            try:
                dtS = dt.prec.getText()[1:-1]
            except:
                print("fail on dtS prec")
        else:
            dtS = None

        if dtN.lower() in self.dbgraph.graph['enums'].keys():
            dtS = self.dbgraph.graph['enums'][dtN.lower()]
            dtN = 'ENUM'
        elif dtN.lower() == 'timestamp with time zone':
            dtN = 'DATETIME'
        elif dtN.lower() == 'timestamp without time zone':
            dtN = 'TIMESTAMP'
            
        nodeid = self.curtable + '.' + cn
        self.dbgraph.add_node(nodeid, node_type = 'column',\
                             col_name = cn, col_type = dtN, col_size = dtS, \
                             col_pos = self.curcolct)
        self.dbgraph.add_edge(self.curtable, nodeid)
        self.dbgraph.graph['cmap'].append('blue')
        self.curcolct += 1
        
        try:
            if 'primary' in ctx.getText().lower():
                self.dbgraph.nodes[self.curtable]['pkey'] = [cn]
        except:
            print("fail on con def pkey")
        
    def enterFkeyconstr_body(self, ctx:postgreSQLParser.Fkeyconstr_bodyContext):
        if ctx.fkey is not None:
            try:
                fkeys = ctx.fkey.getText()[1:-1]
            except:
                print("failed on fkeys", )
            # get referenced table and columns
            fkeys = [fkey[1:-1] if fkey.startswith(('`',"'",'"')) else fkey.lower() for fkey in fkeys.split(',')]
            try:
                reftable = ctx.reft.getText().split('.')
            except:
                print("fail on fkey reftable")
            refdb = None
            if len(reftable) > 1:
                refdb = reftable[0]
                refdb = refdb[1:-1] if refdb.startswith(('`',"'",'"')) else refdb.lower()
            reftable = reftable[-1]
            reftable = reftable[1:-1] if reftable.startswith(('`',"'",'"')) else reftable.lower()
            if reftable not in self.dbgraph.nodes():
                #BAIL!
                return
            if ctx.ref is not None:
                try:
                    refcols = ctx.ref.getText()[1:-1]
                    refcols = [refcol[1:-1] if refcol.startswith(('`',"'",'"')) else refcol.lower() for refcol in refcols.split(',')]
                except:
                    print("failed on fkey refcols")
            else:
                ## implicitly references the primary key of the destination
                refcols = self.dbgraph.nodes()[reftable]['pkey']
            # get node name
            if ctx.parentCtx.identifier() is not None:
                try:
                    name = ctx.parentCtx.identifier().getText()
                    name = name[1:-1] if name.startswith(('`',"'",'"')) else name
                except:
                    print("failed on fkey parent")
            else:
                name = "fkeycon_" + self.curtable + "_to_" + reftable
            # create node
            self.dbgraph.add_node(name, node_type = 'fkey', refer = [], refed = [], refed_t = reftable, refdb = refdb)
            self.dbgraph.graph['cmap'].append('green')

            if len(fkeys) != len(refcols):
                raise Exception('Number of referencing columns does not match number of referenced columns', fkeys, refcols)
            cols = [self.dbgraph.nodes()[edge[1]]['col_name'] for edge in self.dbgraph.edges(self.curtable)]
            destcols = [self.dbgraph.nodes()[edge[1]]['col_name'] for edge in self.dbgraph.edges(reftable)]
            for fkey in fkeys:
                if fkey not in cols:
                    raise Exception("Malformed foreign key: column not in table", fkey, cols)
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

    def enterPkeyconstr_body(self, ctx:postgreSQLParser.Pkeyconstr_bodyContext):
        if "unique" not in ctx.getText().lower(): #skip unique constraints
            if ctx.pkey is not None:
                try:
                    pkeys = ctx.pkey.getText()[1:-1]
                except:
                    print("failed on pkey")
                pkeylist = [pkey[1:-1] if pkey.startswith(('`',"'",'"')) else pkey for pkey in pkeys.split(',')]
                cols = [self.dbgraph.nodes()[edge[1]]['col_name'] for edge in self.dbgraph.edges(self.curtable)]
                col_lower = [col.lower() for col in cols]
                for i in range(len(pkeylist)):
                    cpkey = pkeylist[i].lower()
                    if cpkey not in col_lower:
                        raise Exception("Malformed primary key: column not in table", pkey, cols)
                    else:
                        pkeylist[i] = cols[col_lower.index(cpkey)]
                self.dbgraph.nodes[self.curtable]['pkey'] = pkeylist

    def enterAlter_table_statement(self, ctx:postgreSQLParser.Alter_table_statementContext):
        try:
            tn = ctx.tn.getText().split('.')[-1]
            tn = tn[1:-1] if tn.startswith(('`',"'",'"')) else tn.lower()
        except:
            print("failed alter table name")
        self.curtable = tn
