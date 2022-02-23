from antlr4 import *
import networkx as nx
import inspect
if __name__ is not None and "." in __name__:
    from .MySqlParser import MySqlParser
    from .MySqlParserListener import MySqlParserListener
else:
    from MySqlParser import MySqlParser
    from MySqlParserListener import MySqlParserListener

class MySqlListener(MySqlParserListener):
    ##
    def __init__(self):
        self.dbgraph = nx.MultiDiGraph()
        self.dbgraph.graph['cmap'] = []
        self.dbgraph.graph['dbname'] = None
        self.dbdual = nx.MultiDiGraph()
        self.curtable = None
        self.curcolct = 0
    
    def enterCreateDatabase(self, ctx:MySqlParser.CreateDatabaseContext):
        self.dbgraph.graph['dbname'] = ctx.dbname.getText()
        pass
    
    def enterColumnCreateTable(self, ctx:MySqlParser.ColumnCreateTableContext):
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
        
    def enterColumnDeclaration(self, ctx:MySqlParser.ColumnDeclarationContext):
        try:
            cn = ctx.cn.getText()
            if cn.startswith(('`',"'",'"')):
                cn = cn[1:-1]
            cn = cn.lower()
        except:
            print("failed column name")
        dt = ctx.getChild(1).dt
        try:
            dtN = dt.typeName.getText().upper()
            if 'dlen' in dir(dt) and dt.dlen is not None:
                try:
                    dtS = dt.dlen.getText()[1:-1]
                except:
                    print("fail on dlen")
            elif 'enumlist' in dir(dt) and dt.enumlist is not None:
                try:
                    dtS = dt.enumlist.getText()[1:-1]
                    dtN = 'ENUM'
                except:
                    print("fail on enum")
            else:
                dtS = None
        except Exception as e:
            print("fail on datatype", e)
        nodeid = self.curtable + '.' + cn
        self.dbgraph.add_node(nodeid, node_type = 'column',\
                             col_name = cn, col_type = dtN, col_size = dtS, \
                             col_pos = self.curcolct)
        self.dbgraph.add_edge(self.curtable, nodeid)
        self.dbgraph.graph['cmap'].append('blue')
        self.curcolct += 1
        
        try:
            if ctx.getChild(1).cc is not None \
            and 'primary' in ctx.getChild(1).cc.getText().lower():
                self.dbgraph.nodes[self.curtable]['pkey'] = [cn]
        except:
            print("fail on col dec pkey", e)
    
    def enterConstraintDeclaration(self, ctx:MySqlParser.ConstraintDeclarationContext):
        try:
            con = ctx.getText()
        except:
            print("failed constraint")
        if 'PRIMARY' in con: #primary key
            try:
                pkeys = ctx.getChild(0).pkeys.getText()[1:-1]
            except:
                print("failed on pkey")
            if pkeys.startswith(('`',"'",'"')):
                pkeylist = [pkey.lower()[1:-1] for pkey in pkeys.split(',')]
            else:
                pkeylist = pkeys.lower().split(',')
            self.dbgraph.nodes[self.curtable]['pkey'] = pkeylist
        elif 'FOREIGN' in con: #fkey
            # get columns referencing columns          
            try:
                fkeys = ctx.getChild(0).fkey.getText()[1:-1]
            except:
                print("failed on fkeys")
            if fkeys.startswith(('`',"'",'"')):
                fkeys = [fkey.lower()[1:-1] for fkey in fkeys.split(',')]
            else:
                fkeys = fkeys.lower().split(',')
            
            # get referenced table and columns
            reftable = ctx.getChild(0).rd.tn.getText().split('.')
            refdb = None
            if len(reftable) > 1:
                refdb = reftable[0]
                if refdb.startswith(('`',"'",'"')):
                    refdb = refdb[1:-1]
                refdb = refdb.lower()
            
            reftable = reftable[-1]
            if reftable.startswith(('`',"'",'"')):
                reftable = reftable[1:-1]
            reftable = reftable.lower()
            
            if ctx.getChild(0).rd.refs is not None:
                refcols = ctx.getChild(0).rd.refs.getText()[1:-1]
                if refcols.startswith(('`',"'",'"')):
                    refcols = [refcol.lower()[1:-1] for refcol in refcols.split(',')]
                else:
                    refcols = refcols.lower().split(',')
            else:
                refcols = fkeys[:]
                
            # get node name
            if ctx.getChild(0).name is not None:
                name = ctx.getChild(0).name.getText()
                if name.startswith(('`',"'",'"')):
                    name = name[1:-1]
            else:
                name = "fkeycon_" + self.curtable + "_to_" + reftable
            # create node
            self.dbgraph.add_node(name, node_type = 'fkey', refer = [], refed = [], refed_t = reftable, refdb = refdb)
            self.dbgraph.graph['cmap'].append('green')
            
            if len(fkeys) != len(refcols):
                raise Exception('Number of referencing columns does not match number of referenced columns')
            
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
        