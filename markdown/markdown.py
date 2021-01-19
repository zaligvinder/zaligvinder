import sys
import io
import random
import itertools
import os
from matplotlib.figure import Figure
from matplotlib.font_manager import FontProperties
from io import BytesIO
import ntpath


class MarkdownGenerator:
    base_colours = ["#25333D","#0065AB","#8939AD","#007E7A","#CD3517","#318700","#80746D","#FF9A69","#00D4B8","#85C81A", "#AC75C6","#0F1E82","#A3EDF6","#FFB38F","#49AFD9"]

    def __init__(self,result,track,solvers=None,groups=None,timeout=20000):
        self._res = result
        self._track  = track
        self._solvers = solvers or self._res.getSolvers ()
        self._groups = groups or [tup[0] for tup in list(self._track.getAllGroups ())]
        self._solverColour = dict()
        self._timeout = timeout
        self._ideal = False

        self._totalName = "Total"

        #
        self._groupSolverData = {s : dict() for s in self._solvers}
        self._groupSolverCactusData = {s : dict() for s in self._solvers}

        self._bestGroup = {g : (None,None) for g in self._groups}

        #
        self._calculateSolverColours()

    def _calculateSolverColours(self):
        self._extendColours()
        it_cols = itertools.cycle(self.base_colours)
        for s in self._solvers:
            self._solverColour[s] = next(it_cols)

    def _extendColours(self):
        r = lambda: random.randint(0,255)
        colorGen = lambda : '#%02X%02X%02X' % (r(),r(),r())
        while len(self.base_colours) < len(self._solvers):
          newColor = colorGen()
          if newColor not in self.base_colours:
            self.base_colours+=[newColor]

    def _calculatePar2Score(self,solvedTime,failedCount,errorCount):
        return solvedTime+(failedCount*(self._timeout*2))+(errorCount*(self._timeout*5))

    def _getSummaryDataForSolver(self,solver):
        solverData = dict()
        self._groupSolverData[solver][self._totalName] = dict()
        for i,g in enumerate(self._groups):
            solverData[g] = self._res.getSummaryForSolverGroupXP (solver,g)
            solverData[g]["classified"] = solverData[g]["sat"] + solverData[g]["unsat"] - solverData[g]["errors"]
            solverData[g]["par2"] = self._calculatePar2Score(solverData[g]["totalSolvedTime"],solverData[g]["total"]-solverData[g]["classified"],solverData[g]["errors"])
            for k in solverData[g]:
                if k not in self._groupSolverData[solver][self._totalName]:
                    self._groupSolverData[solver][self._totalName][k] = 0
                self._groupSolverData[solver][self._totalName][k]+=solverData[g][k]

            # best calculation
            if self._bestGroup[g][1] == None or self._bestGroup[g][1] > solverData[g]["par2"]:
                self._bestGroup[g] = (solver,solverData[g]["par2"])
            self._groupSolverData[solver][g] = solverData[g]

    def _getCactusDataForSolver(self,solver,cummulative=True):
        _tmp_totalData = []
        for i,g in enumerate(self._groups):
            entries = []
            t_time = 0
            _tmp_res = self._res.getResultForSolverGroupNoUnk(solver,g)
            for i,data in enumerate(_tmp_res):
                if cummulative:
                    t_time = t_time+data[2].time
                else:
                    t_time = data[2].time 
                entries.append ({"x" : i, "instance" : data[1], "time" : data[2].time, "y" : t_time })
            _tmp_totalData+=[e["time"] for e in entries]
            self._groupSolverCactusData[solver][g] = entries

        # build total cactus data
        self._groupSolverCactusData[solver][self._totalName] = []
        _tmp_totalData.sort()
        t_time = 0
        for i,t in enumerate(_tmp_totalData):
            if cummulative:
                    t_time = t_time+t
            else:
                t_time = t
            self._groupSolverCactusData[solver][self._totalName]+= [{"x" : i, "instance" : "", "time" : t, "y" : t_time }] 

    def _calculateOverallBest(self):
        self._bestGroup[self._totalName] = (None,None)
        for s in self._solvers:
            if self._bestGroup[self._totalName][1] == None or self._bestGroup[self._totalName][1] > self._groupSolverData[s][self._totalName]["par2"]:
                self._bestGroup[self._totalName] = (s,self._groupSolverData[s][self._totalName]["par2"])

    def gatherCompleteData(self,cummulative=True):
        for s in self._solvers:
            self._getSummaryDataForSolver(s)
            self._getCactusDataForSolver(s,cummulative)
        self._calculateOverallBest()

    #
    # Build Markdown page    
    def _solverString(self,solver):
        return f'+++<span style="color: {self._solverColour[solver]};font-weight: bold;">{solver}</span>+++'

    def _buildGroupTable(self,g):
        output_string = ""
        output_string += f"== {g}\n"
        output_string += f"|===\n|Tool name |Correctly classified (Time ratio) |Declared satisfiable |Declared unsatisfiable |Declared unknown |Error |Crashes |Timeout |Par2Score |Total instances |Total instances w/o TO | Total time |Total time w/o TO\n"
        for s in self._solvers:
            data = self._groupSolverData[s][g]
            output_string += f'|{self._solverString(s)}|{data["classified"]} ({round(data["classified"]/data["time"],2)})|{data["sat"]}|{data["unsat"]}|{data["unknown"]}|{data["errors"]}|{data["crashes"]}|{data["timeouted"]}|{data["par2"]}|{round(data["total"],2)}|{round(data["totalWO"],2)}|{round(data["time"],2)}|{round(data["timeWO"],2)}\n'
        output_string += f"|===\n\n"
        return output_string

    def _buildBestGroup(self,g):
        return f"[NOTE]\n====\nBest solver of this run {self._solverString(self._bestGroup[g][0])} got a PAR2 score of {self._bestGroup[g][1]}.\n====\n\n"

    def _buildPictureHTML(self,g):
        fileName = g.lower().replace(" ", "")+'.png'
        return f"\n\n[.text-center]\nimage::img/{fileName}[cactus]\n\n"

    def _buildHeader(self):
        return f"= Benchmark Results\nComparing {' '.join(self._solvers)} on {' '.join(self._groups)} \n:toc: left\n:stem:\n\n"

    def buildMarkDownPage(self):
        self._output.write(self._buildHeader())
        for g in self._groups:
            self._output.write(self._buildPictureHTML(g))
            self._output.write(self._buildGroupTable(g))
            self._output.write(self._buildBestGroup(g))

        self._output.write(self._buildPictureHTML(self._totalName))
        self._output.write(self._buildGroupTable(self._totalName))
        self._output.write(self._buildBestGroup(self._totalName))


    #
    # Generate Plots
    def _generateCactus(self,g,path):
        start_at = 0
        fig = Figure(figsize=(6,3))
        ax = fig.subplots()
        fontP = FontProperties()
        fontP.set_size('small')

        for s in self._solvers:
            sColour = self._solverColour[s]
            data = [i["y"] for i in self._groupSolverCactusData[s][g] if i["x"] >= start_at]
            ax.plot (range(start_at,len(data)+start_at),data,'-',linewidth=2.5,label=s,color=sColour)
            ax.fill_between(range(start_at,len(data)+start_at),data, color=sColour,alpha=0.15)
            lgd = ax.legend(fancybox=True,bbox_to_anchor=(0., 1.02, 1., .102), loc='lower left', ncol=2, mode="expand", borderaxespad=0.,frameon=False,prop={'size': 6})
            ax.spines['top'].set_visible(False)
            ax.spines['right'].set_visible(False)
            ax.spines['bottom'].set_visible(False)
            ax.spines['left'].set_visible(False)
            ax.yaxis.grid(color='black', linestyle='dashdot', linewidth=0.1)
            
            # Save it to a temporary buffer.
            buf = BytesIO()
        fileName = g.lower().replace(" ", "")+'.png'
        fig.savefig(f"{path}/img/{fileName}",format="png",dpi=320,prop=fontP,bbox_extra_artists=(lgd,), bbox_inches='tight')

    def buildPlots(self,path):
        for g in self._groups + [self._totalName]:
            self._generateCactus(g,path)


    # obtain path 
    def _getWorkingDir(self,output):
        fileName = ntpath.basename(output.name)
        path = output.name[:-len(fileName)][:-1]
        if fileName != output.name:
            os.makedirs(f'{path}/img', exist_ok=True)
        return path

    # callee
    def generateTable(self,output,cummulative=True):
        self._output = output
        path = self._getWorkingDir(output)
        self.gatherCompleteData(cummulative)
        self.buildMarkDownPage()
        self.buildPlots(path)
        
if __name__ == "__main__":
    import sys
    import storage.sqlitedb
    db = storage.sqlitedb.DB (sys.argv[1])
    _trackinstance = storage.sqlitedb.TrackInstanceRepository (db)
    _track = storage.sqlitedb.TrackRepository(db,_trackinstance)
    _results = storage.sqlitedb.ResultRepository (db,_track,_trackinstance)
    table  = MarkdownGenerator (_results,_track)
    table.generateTable ()
    



'''
|===
|Program |Satis | NSatis | Error | Unknown | Timeout | Total | Time | TimeWO
|woorpje|200|0|0|0|0|200|8.10|8.10
|cvc4|182|0|0|0|18|200|543.32|3.32
|z3str3|197|0|0|1|2|200|105.07|45.07
|z3seq|183|0|0|0|17|200|545.24|35.24
|norn|176|4|4|0|20|200|1037.63|437.63
|sloth|101|0|0|0|99|200|3658.34|688.34
|===
'''


'''
<link rel="stylesheet" type="text/css" href="ascii.css">
<link rel="stylesheet" type="text/css" href="css.css">
'''