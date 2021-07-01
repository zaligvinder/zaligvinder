import sys
import io


"""

\begin{table*}[t]
    \centering
\resizebox{\textwidth}{!}{

\begin{tabular}{*{19}{c}}
 & & woorpjeSAT & & & CVC4 & & & Z3str3 & & & OSTRICH & & & Z3str4 & & & Z3-Trau & \\
            \cmidrule {2-4} \cmidrule (lr){5-7}\cmidrule (lr){8-10}\cmidrule (lr){11-13}\cmidrule (lr){14-16}\cmidrule (r){17-19}
            sat & & 0 & & & 0 & & & 0 & & & 0 & & & 0 & & & 0 & \\
            unsat & & 0 & & & 0 & & & 0 & & & 0 & & & 0 & & & 0 & \\
            unknown & & 0 & & & 0 & & & 0 & & & 0 & & & 0 & & & 0 & \\
            timeout & & 0 & & & 0 & & & 0 & & & 0 & & & 0 & & & 0 & \\
            \cmidrule {2-4} \cmidrule (lr){5-7}\cmidrule (lr){8-10}\cmidrule (lr){11-13}\cmidrule (lr){14-16}\cmidrule (r){17-19}
            soundness error & & 0 & & & 0 & & & 0 & & & 0 & & & 0 & & & 0 & \\
            program crashes & & 0 & & & 0 & & & 0 & & & 0 & & & 0 & & & 0 & \\
            \cmidrule {2-4} \cmidrule (lr){5-7}\cmidrule (lr){8-10}\cmidrule (lr){11-13}\cmidrule (lr){14-16}\cmidrule (r){17-19}
            Total correct & & 0 & & & 0 & & & 0 & & & 0 & & & 0 & & & 0 & \\
            Time (s) & & 0 & & & 0 & & & 0 & & & 0 & & & 0 & & & 0 & \\
            Time w/o timeouts (s) & & 0 & & & 0 & & & 0 & & & 0 & & & 0 & & & 0 & \\
            \cmidrule {2-4} \cmidrule (lr){5-7}\cmidrule (lr){8-10}\cmidrule (lr){11-13}\cmidrule (lr){14-16}\cmidrule (r){17-19}
    \end{tabular}}\caption{Summary benchmark data for \woorpjebench{} (809 Benchmarks): ({\footnotesize \faCheckCircleO \normalsize}: classified sat, \faTimesCircleO: classified unsat, \faCircleO: unknown, \faHourglassEnd: timeouted instances, \faBomb: incorrectly classified, \faFlash: solver crashes, \faCheck: correctly classified \faCodeFork: calls to the external solver, \faClockO: total time in seconds)}\label{tab:results1}\vspace*{-0.5cm} \end{table*}
    """

class TableGenerator:
    def __init__(self,result,track,solvers,groups,all_instances):
        self._res = result
        self._track  = track
        self._solvers = solvers or self._res.getSolvers ()
        self._all_instances = all_instances
        #self._groups = groups


        #self._solvers = ["Z3str3RE-none","Z3str3RE-li","Z3str3RE-psh","Z3str3RE-ali","Z3str3RE-asi","Z3str3RE-base"]

        #self._solvers = ['CVC4', 'Z3seq', 'Z3str3', 'woorpjeLevi-variableTermRatio-3.14-Z3seq', 'woorpjeLevi-variableTermRatio-0.15-Z3seq', 'woorpjeLevi-variableTermRatio-1.12358-Z3seq', 'woorpjeLevi-variableTermRatio-3.14-Z3str3', 'woorpjeLevi-variableTermRatio-0.15-Z3str3', 'woorpjeLevi-variableTermRatio-1.12358-Z3str3', 'woorpjeLevi-variableTermRatio-3.14-CVC4', 'woorpjeLevi-variableTermRatio-0.15-CVC4', 'woorpjeLevi-variableTermRatio-1.12358-CVC4', 'woorpjeLevi-waitingListLimit-314-Z3seq', 'woorpjeLevi-waitingListLimit-15-Z3seq', 'woorpjeLevi-waitingListLimit-1123-Z3seq', 'woorpjeLevi-waitingListLimit-314-Z3str3', 'woorpjeLevi-waitingListLimit-15-Z3str3', 'woorpjeLevi-waitingListLimit-1123-Z3str3', 'woorpjeLevi-waitingListLimit-314-CVC4', 'woorpjeLevi-waitingListLimit-1123-CVC4', 'woorpjeLevi-equationGrowth-0.15-Z3seq', 'woorpjeLevi-equationGrowth-1.075-Z3seq', 'woorpjeLevi-waitingListLimit-15-CVC4', 'woorpjeLevi-equationGrowth-2-Z3seq', 'woorpjeLevi-equationGrowth-0.15-Z3str3', 'woorpjeLevi-equationGrowth-2-Z3str3', 'woorpjeLevi-equationGrowth-1.075-CVC4', 'woorpjeLevi-equationGrowth-2-CVC4', 'woorpjeLevi-equationGrowth-1.075-Z3str3', 'woorpjeLevi-equationGrowth-0.15-CVC4', 'woorpjeLevi-equationLength-2-Z3seq', 'woorpjeLevi-equationLength-20-Z3seq', 'woorpjeLevi-equationLength-2-Z3str3', 'woorpjeLevi-equationLength-20-Z3str3', 'woorpjeLevi-equationLength-2-CVC4', 'woorpjeLevi-equationLength-400-Z3seq', 'woorpjeLevi-equationLength-400-Z3str3', 'woorpjeLevi-equationLength-400-CVC4', 'woorpjeLevi-equationLength-20-CVC4', 'woorpjeLevi-none-0-Z3seq', 'woorpjeLevi-none-0-CVC4', 'woorpjeLevi-none-0-Z3str3']


        self._groups = groups or [tup[0] for tup in list(self._track.getAllGroups ())]

    def _solverNameMap(self,name):
        solvermapping = { "Z3str3RE-base" : "Z3str3RE" , "Z3Trau" : "Z3-Trau", "ostrich" : "OSTRICH", "Z3str3_59e9c87" : "Z3str3", "Z3seq-489" : "Z3Seq"}
        if name in solvermapping:
            return solvermapping[name]
        else:
            return name
        
    def genTableHeader (self):
            layout = "*{"+str(len(self._solvers)*3+1)+"}{c}"   #*{19}{c} #"c |"*(len(self._solvers)+1)
            solverLayout = "".join([ "\\textsc{"+self._solverNameMap(s)+"} & & & "  for s in self._solvers])[:-4]
            self._output.write('\\begin{table}[t!]')
            self._output.write ("\\resizebox{.95\\textwidth}{!}{\\begin{tabular}{")
            self._output.write (layout)
            self._output.write ("}\n")
            self._output.write ("& & " + solverLayout + "\\\\ \n")

    def genMidRule(self):
        # \cmidrule {2-4} \cmidrule (lr){5-7}\cmidrule (lr){8-10}\cmidrule (lr){11-13}\cmidrule (lr){14-16}\cmidrule (r){17-19}
        i = 2
        midrule = ""
        for s in self._solvers:
            midrule+="\\cmidrule (lr) {"+str(i)+"-"+str(i+2)+"} "
            i+=3
        return midrule

    def getData (self,all=True,group=None,ms=True,python_output=True):
        output = [self.genMidRule()+"\n sat & &","unsat & &",self.genMidRule()+"\n unknown  & &","timeout  & &","soundness error  & &","program crashes  & &",self.genMidRule()+"\n Total correct  & &", "Time (s)  & &", "Time w/o timeouts (s)  & &"]
        key = ["sat","unsat","unk","timeout","errorsTotal","crash","totalClassified","time","timeWO"]

        if python_output:
            print("data"+str(''.join(str(group).split(' ')))+" = {", end="")


        for s in self._solvers:
            if not all:
                res = self._res.getSummaryForSolverGroupTable(s,group)
            else:
                res = dict()
                for g in self._groups:
                    tmp_res = self._res.getSummaryForSolverGroupTable(s,g)
                    if len(list(res.keys())) == 0:
                        res = tmp_res
                        #print(res)
                    else:
                        for k in res.keys():
                            #print(k,res[k])
                            res[k]+=tmp_res[k]

                #res = self._res.getSummaryForSolverTable (s)
            res["totalClassified"] = res["sat"]+res["unsat"]-(res["error"]+res["invalid"])
            res["errorsTotal"] = res["error"]+res["invalid"]

            # transform to seconds
            if ms:
                res["time"] = round(res["time"]/1000, 2)
                res["timeWO"] = round(res["timeWO"]/1000, 2)

            for i in range(0,len(output)):
                output[i]+=str(res[key[i]])+" & & & "

            # sat & & 0 & & & 0 & & & 0 & & & 0 & & & 0 & & & 0 & \\

            #print(f"'{s}' : {res}")


            if python_output:
                print("'"+s+"' : {", end='')
                for k in key:
                    print(f"'{k}' : {res[k]},", end='')

                print("},",end="")

        if python_output:
            print("}")



        for l in output:
            self._output.write (l[:-4] + "\\\\ \n")# \\hline\n")
            
    def genTableFooter (self,group):
        self._output.write (self.genMidRule()+"\n\\end{tabular}}\n\n")
        self._output.write('''\\caption{Results for '''+str(group)+'''.}
\\label{tab:'''+str(group).replace(" ","_")+'''}
\\end{table}''')
    
    def generateTable (self,output):
        all = self._all_instances
        self._output = output

        self.genLatexDocumentHead()
        if all:
            self.genTableHeader ()
            self.getData ()
            self.genTableFooter ("Total")
        else:
            for g in self._groups:
                #self._output.write(g+"\n\n")
                self.genTableHeader ()
                self.getData (all,g)
                self.genTableFooter (g)

        self.genLatexDocumentFoot()        
        
    def genLatexDocumentHead(self):
        self._output.write('''\\documentclass[11pt]{article}
\\usepackage{color}
\\usepackage{tikz}
\\usepackage{pgfplots}
\\usepgfplotslibrary{fillbetween}
\\pgfplotsset{compat=1.16}
\\begin{document}
''')

    def genLatexDocumentFoot(self):
        self._output.write('''\\end{document}''')



if __name__ == "__main__":
    import sys
    import storage.sqlitedb
    db = storage.sqlitedb.DB (sys.argv[1])
    _trackinstance = storage.sqlitedb.TrackInstanceRepository (db)
    _track = storage.sqlitedb.TrackRepository(db,_trackinstance)
    _results = storage.sqlitedb.ResultRepository (db,_track,_trackinstance)
    table  = TableGenerator (_results,_track)
    table.generateTable ()
    
"""

 \begin{tabular}{|c | c | c | c|} 
    \hline
     & Solver & Solver & Solver \\ [0.5ex] 
    \hline\hline
    sat &  &  &  \\ 
    \hline
    unsat &  &  &  \\
    \hline
    \hline
    unknow &  &  &  \\
    \hline
    timeout &  &  &  \\
    \hline
    soundness error &  &  &  \\
    \hline
    program error &  &  &  \\
    \hline
    \hline
    Time (s) &  &  &  \\
    \hline
    Time w/o timeouts (s) &  &  &  \\
    \hline
\end{tabular}

"""