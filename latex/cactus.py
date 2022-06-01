import sys
import io
import statistics
import itertools
import random


class CactusGenerator:
    def __init__(self,result,track,solvers,groups,all_instances):
        self._res = result
        self._track  = track
        self._solvers = solvers or self._res.getSolvers ()
        self._groups = groups or [tup[0] for tup in list(self._track.getAllGroups ())]
        self._maxPoints = 100
        self._startPoints = 0 #45500 # 13500
        self._all_instances = all_instances

        self._solverColours = None
        self._solverLine = None


        self._virtualBestName = "virtualBestAll"
        self._ideal = True
        self._idealSolvers = ['CVC4', 'Z3seq', 'Z3str3', 'Z3str4'] #['woorpjeLevi-variableTermRatio-3.14-CVC4', 'woorpjeLevi-variableTermRatio-0.15-CVC4', 'woorpjeLevi-variableTermRatio-1.12358-CVC4', 'woorpjeLevi-waitingListLimit-314-CVC4', 'woorpjeLevi-waitingListLimit-15-CVC4', 'woorpjeLevi-waitingListLimit-1123-CVC4', 'woorpjeLevi-equationGrowth-0.15-CVC4', 'woorpjeLevi-equationGrowth-1.075-CVC4', 'woorpjeLevi-equationGrowth-2-CVC4', 'woorpjeLevi-equationLength-2-CVC4', 'woorpjeLevi-equationLength-20-CVC4', 'woorpjeLevi-equationLength-400-CVC4', 'woorpjeLevi-none-0-CVC4'] #[] #["CVC4RE-ali","CVC4RE-li","CVC4RE-asi","CVC4RE-psh","CVC4RE-none","CVC4RE-base"] #['Z3str4-alwayscf', 'Z3str4-nevercf', 'Z3str4-regex', 'Z3str4-seq']

        if self._ideal:
            self._solvers+=[self._virtualBestName]

        #self._solvers = ["Z3str3RE-none","Z3str3RE-li","Z3str3RE-psh","Z3str3RE-ali","Z3str3RE-asi","Z3str3RE-base"]
        #self._solvers = ['Z3seq', 'Z3str3', 'CVC4',"woorpjeLevi-variableTermRatio-0.15-Z3seq","woorpjeLevi-equationLength-2-Z3str3","woorpjeLevi-variableTermRatio-3.14-CVC4", 'woorpjeLevi-none-0-Z3seq', 'woorpjeLevi-none-0-Z3str3', 'woorpjeLevi-none-0-CVC4']

    def _solverNameMap(self,name):
        solvermapping = { "Z3str3RE-base" : "Z3str3RE" , "Z3Trau" : "Z3-Trau", "ostrich" : "OSTRICH", "Z3str3_59e9c87" : "Z3str3", "Z3seq-489" : "Z3Seq"}
        if name in solvermapping:
            return solvermapping[name]
        else:
            return name

    def _woorpjeSolvers(self,woorpjePrefix,general_solvers,activeGroup=None):
        woorpje_solvers = self._res.getPureWoorpjeSolvers()
        best_solvers = self._res.getBestWoorpjeSolvers(general_solvers,activeGroup,woorpjePrefix)
        return general_solvers+woorpje_solvers+best_solvers

    def _calculateStyle(self,bw=False):
        # colour setup
        if not bw:
            colors = ["#25333D","#0065AB","#8939AD","#007E7A","#CD3517","#318700","#80746D","#FF9A69","#00D4B8","#85C81A", #none_5_z3str3
                      "#AC75C6","#0F1E82","#A3EDF6","#FFB38F","#49AFD9",]
            lines_styles = ["solid"]
        else:
            colors = ["#000000","#555555","#999999","#000000","#555555","#999999","#000000","#555555","#999999"]
            colors = ["#BBBBBB","#999999","#777777","#555555" ,"#333333","#444444","#000000"]
            lines_styles = ["densely dashed",
                            "dotted",
                            "dashed",
                            "dashdotted",
                            "dashdotdotted",
                            "densely dotted",
                            "solid",
                            "densely dashdotted",
                            "densely dashdotdotted",
                            "loosely dotted",
                            "loosely dashed",                            
                            "loosely dashdotted",                           
                            "loosely dashdotdotted"]

            #lines_styles = ["dotted","dotted","dotted","solid","solid","solid","dashdotted","dashdotted","dashdotted"]




        # extend the colors 
        r = lambda: random.randint(0,255)

        colorGen = lambda : '#%02X%02X%02X' % (r(),r(),r())
        greyColorGen = lambda x : '#%02X%02X%02X' % (x,x,x)

        while len(colors) < 26:
            if bw:
                newColor = greyColorGen(r())
            else:
                newColor = colorGen()
            if newColor not in colors:
                colors+=[newColor]
        it_cols = itertools.cycle(colors)

        linestyle_index = None
        current_color = None

        solver_line = dict()
        solver_colours = dict()
        for s in self._solvers:
            s = self._solverNameMap(s)
            
            if linestyle_index == None or linestyle_index == len(lines_styles):
                linestyle_index = 0

            #if linestyle_index == 0:
            current_color = next(it_cols)
            
            solver_colours[s] = """\\definecolor{colour"""+str(s.replace('_','').replace('.',''))+"""}{HTML}{"""+str(current_color[1:])+"""}"""
            solver_line[s] = lines_styles[linestyle_index]
            linestyle_index+=1
        return solver_colours,solver_line

    def _getLatexColours(self,bw=False):
        if self._solverColours == None:
            self._solverColours,self._solverLine = self._calculateStyle(bw)
        return self._solverColours 

    def _getLineStyle(self,bw=False):
        if self._solverLine == None:
            self._solverColours,self._solverLine = self._calculateStyle(bw)
        return self._solverLine
        
    def genTableHeader (self,group):
            if self._all_instances:
                group = "Total"
            #self._output.write ('\\resizebox{.95\\textwidth}{!}{\\pgfplotsset{scaled x ticks=false}\\pgfplotsset{scaled y ticks=false}\\begin{tikzpicture}\\begin{axis}[title='+str(group)+',xmin=-1000,xlabel=Solved instances,ylabel=Time (seconds),,legend columns=2,legend style={nodes={scale=0.5, transform shape}, fill=none,anchor=east,align=center },axis line style={draw=none}, xtick pos=left, ytick pos=left, ymajorgrids=true, legend style={draw=none},x post scale=2,y post scale=1]')
            self._output.write('\\begin{figure}[t!]')
            self._output.write ('\\resizebox{.95\\textwidth}{!}{\\pgfplotsset{scaled x ticks=false}\\pgfplotsset{scaled y ticks=false}\\begin{tikzpicture}\\begin{axis}[title='+str(group)+',xlabel=Solved instances,ylabel=Time (seconds),,legend columns=2,legend style={nodes={scale=0.5, transform shape}, fill=none,anchor=east,align=center },axis line style={draw=none}, xtick pos=left, ytick pos=left, ymajorgrids=true, legend style={draw=none},x post scale=2,y post scale=1]') #,xmin=-1000]')
        

            #[xmin=-1000,xlabel=Solved instances,ylabel=Time (seconds),,legend columns=2,legend style={nodes={scale=0.5, transform shape}, fill=none,anchor=east,align=center },axis line style={draw=none}, xtick pos=left, ytick pos=left, ymajorgrids=true, legend style={draw=none},x post scale=2,y post scale=1]

    def getData (self,all_instances,bw=False):
        groups = self._groups
        #all_instances = False #True # True
        cummulative = True #False # sum up the times
        rdata = {}
        woorpjebest = False
        print (groups)

        # setup solver colours
        for s,c in self._getLatexColours(bw).items():
            self._output.write(c+"\n")

        for i,g in enumerate(groups):
            self.genTableHeader (g)
            fillbetween = []

            if woorpjebest:
                woorpjePrefix = "woorpje-"#-hack-"
                general_solvers = ["cvc4","z3seq","z3str3"]
                if all_instances:
                    self._solvers = self._woorpjeSolvers(woorpjePrefix,general_solvers,None)
                else: 
                    self._solvers = self._woorpjeSolvers(woorpjePrefix,general_solvers,g)

            for solv in self._solvers:
                # Fetch the Data
                l = []

                if all_instances:
                    res = []
                    for g in groups:
                        if self._ideal and solv == self._virtualBestName:
                            res+=self._res.getVirtualBestSolverFromSolversGroup(self._idealSolvers,g,self._virtualBestName)
                        else:
                            res+=self._res.getResultForSolverGroupNoUnk(solv,g) 

                    ### sort
                    res.sort(key = lambda r: r[2].time)

                    ## quick hack
                    """
                    if solv == self._virtualBestName:
                        tr = {'smtcalls' : 0, 'timeouted' : 0, 'sat' : 0, 'unsat' : 0, 'unknown' : 0, 'verified' : 0, 'errors' : 0, 'crashes' : 0, 'time' : 0, 'timeWO' : 0, 'total' : 0, 'totalWO' : 0, 'totalSolvedTime': 0}
                        for i,s,r in res:
                            if r.result == True:
                                tr['sat']+=1
                                tr['totalWO']+=1
                                tr['totalSolvedTime']+=r.time 
                                tr['timeWO']+=r.time
                            elif r.result == False:
                                tr['unsat']+=1
                                tr['totalWO']+=1
                                tr['totalSolvedTime']+=r.time
                                tr['timeWO']+=r.time
                            else:
                                if r.timeouted == True:
                                    tr['timeouted']+=1
                                elif r.timeouted == False:
                                    tr['totalWO']+=1
                                    tr['unknown']+=1

                            tr['time']+=r.time
                            tr['total']+=1

                            if r.verified == True: 
                                tr['verified']+=1

                        tr["classified"] = tr["sat"] + tr["unsat"] - tr["errors"]
                        for k in tr.keys():
                            print(k,tr[k])
                    """


                else:
                    if self._ideal and solv == self._virtualBestName:
                        res=self._res.getVirtualBestSolverFromSolversGroup(self._idealSolvers,g,self._virtualBestName)
                        res.sort(key = lambda r: r[2].time)
                    else:
                        res = self._res.getResultForSolverGroupNoUnk(solv,g)

                s = 0
                for i,data in enumerate(res):
                    if cummulative:
                        s = s+data[2].time
                        l.append ({"x" : i,
                               "instance" : data[1],
                               "time" : data[2].time,
                               "y" : s})
                    else:
                        s = data[2].time 
                        l.append ({"x" : i,
                               "instance" : data[1],
                               "time" : data[2].time,
                               "y" : s})
            
                print(solv,l[-1]["y"]/1000)

                solv = self._solverNameMap(solv)

                # accumulate points
                if len(l) < self._maxPoints:
                    ll = [(i["x"],i["y"]) for i in l]
                else:
                    ll = []
                    total_points = len(l)

                    accumulation_count = round((total_points-self._startPoints)/(self._maxPoints-2))
                    i = self._startPoints+1
                    j = 1
                    ll.append((self._startPoints+1,l[self._startPoints]["y"]))
                    while True:
                        if j*accumulation_count+1 < (total_points-self._startPoints):
                            x = statistics.mean([value["x"] for value in l[i:self._startPoints+(accumulation_count*j+1)]])
                            y = statistics.mean([value["y"] for value in l[i:self._startPoints+(accumulation_count*j+1)]])
                            ll.append((x,y))
                            i=accumulation_count+i 
                        else: 
                            if i < ((total_points-self._startPoints)-1):

                                x = statistics.mean([value["x"] for value in l[i:total_points-1]])
                                y = statistics.mean([value["y"] for value in l[i:total_points-1]])
                                ll.append((x,y))
                            break
                        j+=1
                    ll.append((total_points,l[total_points-1]["y"]))

                # cactus points
                if (len(ll) > 0):                
                    output = ('\n\\addplot[name path=path'+str(solv.replace('_','').replace('.',''))+' , colour'+str(solv.replace('_','').replace('.',''))+', line width=1.5pt,' + self._getLineStyle(bw)[solv]+'] coordinates {')

                    #output = ('\\addplot[color='+str(colors[solverNo-1])+',mark=x] coordinates {')
                    for (x,y) in ll:
                        output+="("+str(x)+","+str(y/1000)+")"
                    output+= '};\n'

                    # collect data to fill between curve and x axis; needs to be placed in the end 
                    # Needs Packages:
                    # \usepackage{pgfplots}
                    # \usepgfplotslibrary{fillbetween}
                    fillbetween+=['\\path[name path=axis'+str(solv.replace('_','').replace('.',''))+'] (axis cs:0,0) -- (axis cs:'+str(ll[len(ll)-1][0])+',0);\n']
                    fillbetween+=['\\addplot [thick,color=colour'+str(solv.replace('_','').replace('.',''))+',fill=colour'+str(solv.replace('_','').replace('.',''))+',fill opacity=0.1] fill between [of=path'+str(solv.replace('_','').replace('.',''))+' and axis'+str(solv.replace('_','').replace('.',''))+'];\n']


                    output+='\\addlegendentry{'+str(solv)+'}\n'
                    output+='\n'
                    self._output.write (output)

            for l in fillbetween:
                self._output.write (l)

            self.genTableFooter (g)

            if all_instances:
                break
            
    def genTableFooter (self,group):
        if self._all_instances:
            group = "Total"

        self._output.write ('\\end{axis}\\end{tikzpicture}}\n\n')
        self._output.write('''\\caption{Cactus plot summarizing performance on '''+str(group)+'''.}
\\label{fig:cactus_'''+str(group).replace(" ","_")+'''}

\\end{figure}''')
    
    def generateTable (self,output):
        self._output = output
        self.genLatexDocumentHead()
        self.getData (self._all_instances)
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
    for i in cactusPoints:
        print('\\resizebox{.2\\textwidth}{!}{\\begin{tikzpicture}\\begin{axis}[title=Track '+str(int_to_Roman(i))+',xlabel=Solved instances,ylabel=Time (seconds),legend style={at={(0.02,0.98)},anchor=north west}]')

        solverNames = ["woorpje","cvc4","z3str3","z3seq","norn","sloth"]
        #if i == 5:
        #    solvers = ["WoorpjeSAT","z3str3Solver","z3sequenceSolver","Norn"]

        for t in solverNames: # ,"CVC4"ec
            solverNo+=1
            output = ('\\addplot coordinates {')

            #output = ('\\addplot[color='+str(colors[solverNo-1])+',mark=x] coordinates {')
            for (solved,time) in cactusPoints[i][t]:
                if time < maxTimes[i-1]:
                    output+="("+str(solved)+","+str(time)+")"
            #output=output[:-1]
            output+= '};'
            print(output)
            print('\\addlegendentry{'+str(t)+'}')
            print('\n')
        solverNo=0
        print('\end{axis}\end{tikzpicture}}')
"""