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
    #base_colours = ['#e41a1c','#377eb8','#4daf4a','#984ea3','#ff7f00','#f781bf','#999999']

    def __init__(self,result,track,solvers=None,groups=None,timeout=21000):
        self._res = result
        self._track  = track
        self._solvers = solvers or self._res.getSolvers ()
        self._groups = groups or [tup[0] for tup in list(self._track.getAllGroups ())]
        self._solverColour = dict()
        self._timeout = timeout

        # ideal solver
        self._ideal = False #True
        self._virtualBestSolver = dict()
        self._hiddenSolvers = []
        self._idealName = "Z3str4-virtualBestSolver"

        self._totalName = "Total"


        # if we don't care about the errors and the following list is not empty it will be used for the smtcomp scores.
        self._specialSolverList = [] #['Z3str4-alwayscf', 'Z3str4-nevercf', 'Z3str4-regex', 'Z3str4-seq'] #[] #["Z3str3RE-ali","Z3str3RE-li","Z3str3RE-asi","Z3str3RE-psh","Z3str3RE-none","Z3str3RE-base"] #[]# ['Z3str4-alwayscf', 'Z3str4-nevercf', 'Z3str4-regex', 'Z3str4-seq']

        if self._ideal:
            self._hiddenSolvers = [s for s in self._specialSolverList if s not in self._solvers]
            self._solvers+=self._hiddenSolvers

        #
        self._groupSolverData = {s : dict() for s in self._solvers}
        self._groupSolverCactusData = {s : dict() for s in self._solvers}

        if self._ideal:
            self._groupSolverData[self._idealName] = dict()
            self._groupSolverCactusData[self._idealName] = dict()

        self._bestGroup = {g : (None,None) for g in self._groups}

        #
        self._calculateSolverColours()

        #
        self._setTimeout()
        self._ms = False
        if self._timeout/1000 > 1:
            self._ms = True

        # SMT Comp Score calculation
        self._divisionRankings = {g : dict() for g in self._groups}
        self._biggestLead = {g : (None,None) for g in self._groups}
        self._solverInstanceResults = {s : dict() for s in self._solvers}
        self._largestContribution = {g : dict() for g in self._groups}

        # don't judge errors
        self._ignoreErrorInstances = True #False
        self._errorInstances = {g : None for g in self._groups}

        # detailed errors
        self._calcDetailedErrors = True
        self._detailedErrors = {s : dict() for s in self._solvers}


    def _calculateSolverColours(self):
        self._extendColours()
        it_cols = itertools.cycle(self.base_colours)
        for s in self._solvers:
            self._solverColour[s] = next(it_cols)

        if self._ideal:
            self._solverColour[self._idealName] = next(it_cols)

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
            for k in solverData[g].keys():
                if solverData[g][k] == None:
                    solverData[g][k] = 0
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
                    t_time = self._addTime(t_time,data[2].time)
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
                    t_time = self._addTime(t_time,t)
            else:
                t_time = t
            self._groupSolverCactusData[solver][self._totalName]+= [{"x" : i, "instance" : "", "time" : t, "y" : t_time }] 

    def _calculateOverallBest(self):
        self._bestGroup[self._totalName] = (None,None)
        for s in self._solvers:
            if self._bestGroup[self._totalName][1] == None or self._bestGroup[self._totalName][1] > self._groupSolverData[s][self._totalName]["par2"]:
                self._bestGroup[self._totalName] = (s,self._groupSolverData[s][self._totalName]["par2"])

    def _setTimeout(self):
        to = self._res.getTimeout()
        if to != None:
            self._timeout = to

    def _addTime(self,tSum,t):
        if self._ms:
            return float(tSum+float(t/1000))
        else:
            return tSum+t

    def gatherCompleteData(self,cummulative=True):
        for s in self._solvers:
            self._getSummaryDataForSolver(s)
            self._getCactusDataForSolver(s,cummulative)
        self._calculateOverallBest()

        # SMT-Comp data
        for g in self._groups:
            self.calculateDivisionRanking(g)
            self.storeInstanceResultsForGroup(g)
            self.biggestLeadPerGroup(g)
            self.largestContribution(g)
        self.smtCompTotal()

        # errors
        if self._calcDetailedErrors:
            self.calculateDetailedErrors()

        # ideal solver
        if self._ideal:
            pass


    # SMT Comp Score Calculation
    def calculateDivisionRanking(self,g):
        scores = {s : (self._groupSolverData[s][g]["errors"],self._groupSolverData[s][g]["classified"],self._groupSolverData[s][g]["time"])  for s in [ss for ss in self._solvers if ss not in self._hiddenSolvers] }
        self._divisionRankings[g] = {s: v for s, v in sorted(scores.items(), key=lambda x: (x[1][0],-x[1][1],x[1][2]))}

    def biggestLeadPerGroup(self,g):
        ranks = list(self._divisionRankings[g].keys())
        if len(ranks) > 1:
            if self._divisionRankings[g][ranks[1]][1] == 0:
                self._biggestLead[g] = (ranks[0],0)
            else:
                self._biggestLead[g] = (ranks[0],self._divisionRankings[g][ranks[0]][1]/self._divisionRankings[g][ranks[1]][1])

    def storeInstanceResultsForGroup(self,g):
        for s in self._solvers:
            self._solverInstanceResults[s][g] = {i[0] : i[1] for i in sorted([r[1:] for r in self._res.getResultForSolverGroup (s,g)], key=lambda x: x[0])}

            if self._ignoreErrorInstances:
                # delete errors in all solvers
                #if self._errorInstances[g] == None:
                    #self._errorInstances[g] = self._res.getErrorsForSolversGroup(self._solvers,g)
                self._errorInstances[g] = self._res.getErrorsForSolversGroup([s],g)


                for iid in self._errorInstances[g]:
                    del self._solverInstanceResults[s][g][iid]

                #self._solverInstanceResults[s][g] = {i[0] : i[1] for i in sorted([r[1:] for r in self._res.getResultForSolverGroupErrorFree (s,g,self._solvers)], key=lambda x: x[0])}

            # redundant storing, but easier for now
            if self._totalName not in self._solverInstanceResults[s]:
                self._solverInstanceResults[s][self._totalName] = self._solverInstanceResults[s][g].copy()
            else:
                self._solverInstanceResults[s][self._totalName].update(self._solverInstanceResults[s][g].copy())

    def virtualBestForGroupSolvers(self,g,solvers,dontStore=False): # dontStore is used for the difference run
        if not dontStore and g in self._virtualBestSolver:
            return None

        virtualBest = dict()
        # we pass the solvers, 'cause we only want to consider sound solvers
        for s in solvers:
            for i in self._solverInstanceResults[s][g].keys():
                iRes = self._solverInstanceResults[s][g][i]

                if i not in virtualBest:
                    virtualBest[i] = iRes
                elif (virtualBest[i].result == None and iRes.result != None) or (iRes.result != None and iRes.time < virtualBest[i].time) or (virtualBest[i].result == None and iRes.result == None and iRes.time < virtualBest[i].time): # last condition prefers unknowns over timeouts
                    virtualBest[i] = iRes

        if self._ideal and g not in self._virtualBestSolver and not dontStore:
            self._virtualBestSolver[g] = virtualBest
            self._getSummaryDataForIdeal(self._virtualBestSolver,g)

            # all data collected -> build cactus data
            if len(list(self._virtualBestSolver.keys())) == len(self._groups)+1:
                self._getCactusDataForIdealSolver()

        return (0,sum([1 for r in virtualBest.values() if r.result in [True,False]]),sum([r.time for r in virtualBest.values() if r.result in [True,False]]))

    def _getSummaryDataForIdeal(self,virtualBest,g):
        solverData = dict()
        self._groupSolverData[self._idealName][self._totalName] = dict()
        solverData[g] = {'smtcalls' : 0, 'timeouted' : 0, 'sat' : 0, 'unsat' : 0, 'unknown' : 0, 'verified' : 0, 'errors' : 0, 'crashes' : 0, 'time' : 0, 'timeWO' : 0, 'total' : 0, 'totalWO' : 0, 'totalSolvedTime': 0}
        for i in virtualBest[g].keys():
            if virtualBest[g][i].result == True:
                solverData[g]['sat']+=1
                solverData[g]['totalWO']+=1
                solverData[g]['totalSolvedTime']+=virtualBest[g][i].time 
                solverData[g]['timeWO']+=virtualBest[g][i].time
            elif virtualBest[g][i].result == False:
                solverData[g]['unsat']+=1
                solverData[g]['totalWO']+=1
                solverData[g]['totalSolvedTime']+=virtualBest[g][i].time
                solverData[g]['timeWO']+=virtualBest[g][i].time
            else:
                if virtualBest[g][i].timeouted == True:
                    solverData[g]['timeouted']+=1
                elif virtualBest[g][i].timeouted == False:
                    solverData[g]['totalWO']+=1
                    solverData[g]['unknown']+=1

            solverData[g]['time']+=virtualBest[g][i].time
            solverData[g]['total']+=1

            if virtualBest[g][i].verified == True: 
                solverData[g]['verified']+=1

        solverData[g]["classified"] = solverData[g]["sat"] + solverData[g]["unsat"] - solverData[g]["errors"]
        solverData[g]["par2"] = self._calculatePar2Score(solverData[g]["totalSolvedTime"],solverData[g]["total"]-solverData[g]["classified"],solverData[g]["errors"])

        for k in solverData[g]:
            if k not in self._groupSolverData[self._idealName][self._totalName]:
                self._groupSolverData[self._idealName][self._totalName][k] = 0
            self._groupSolverData[self._idealName][self._totalName][k]+=solverData[g][k]
        self._groupSolverData[self._idealName][g] = solverData[g]

    def _getCactusDataForIdealSolver(self,cummulative=True):
        _tmp_totalData = []
        
        for g in self._groups:
            entries = []
            t_time = 0
            _tmp_res = sorted([(self._idealName,i,iRes) for (i,iRes) in self._virtualBestSolver[g].items() if iRes.result != None] , key=lambda x: x[2].time)
            for i,data in enumerate(_tmp_res):
                if cummulative:
                    t_time = self._addTime(t_time,data[2].time)
                else:
                    t_time = data[2].time 
                entries.append ({"x" : i, "instance" : data[1], "time" : data[2].time, "y" : t_time })
            _tmp_totalData+=[e["time"] for e in entries]
            self._groupSolverCactusData[self._idealName][g] = entries

        # build total cactus data
        self._groupSolverCactusData[self._idealName][self._totalName] = []
        _tmp_totalData.sort()
        t_time = 0
        for i,t in enumerate(_tmp_totalData):
            if cummulative:
                    t_time = self._addTime(t_time,t)
            else:
                t_time = t
            self._groupSolverCactusData[self._idealName][self._totalName]+= [{"x" : i, "instance" : "", "time" : t, "y" : t_time }] 

    def _normaliseFactor(self,g,s):
        return int(self._groupSolverData[s][g]["total"])/len(self._solvers)

    def largestContribution(self,g,i=1):
        #i = 1 means we're looking at the correctly solved instances
        if self._ignoreErrorInstances:
            soundSolvers = set([ss for ss in self._solvers if ss not in self._hiddenSolvers])

            """
            if len(self._specialSolverList) > 0:
                soundSolvers = set(self._specialSolverList)
            """
        else:
            soundSolvers = set(s for s in self._divisionRankings[g].keys() if self._divisionRankings[g][s][0] == 0)
        totalVirtualBest = self.virtualBestForGroupSolvers(g,soundSolvers,True)



        if self._ideal:
            if len(self._specialSolverList) > 0:
                tSolvers = set(self._specialSolverList)
            else: 
                tSolvers = set([ss for ss in self._solvers if ss not in self._hiddenSolvers])
            self.virtualBestForGroupSolvers(g,tSolvers)


        print(g)

        for s in soundSolvers:
            sVirtualBest = self.virtualBestForGroupSolvers(g,soundSolvers.difference(set({s})),True)
            self._largestContribution[g][s] = 0

            if totalVirtualBest[i] != 0:
                self._largestContribution[g][s] = (1 - (sVirtualBest[i]/totalVirtualBest[i]))*self._normaliseFactor(g,s)
    


            #print(s,soundSolvers.difference(set({s})),sVirtualBest[i],totalVirtualBest[i],(1 - (sVirtualBest[i]/totalVirtualBest[i]))*self._normaliseFactor(g,s))

    def smtCompTotal(self):
        self._divisionRankings[self._totalName] = {s : (0,0,0.0) for s in [ss for ss in self._solvers if ss not in self._hiddenSolvers]}
        self._largestContribution[self._totalName] = dict()
        for g in self._groups:
            # division ranks
            for s in self._divisionRankings[g].keys():
                self._divisionRankings[self._totalName][s] = (self._divisionRankings[self._totalName][s][0]+self._divisionRankings[g][s][0],
                                                              self._divisionRankings[self._totalName][s][1]+self._divisionRankings[g][s][1],
                                                              self._divisionRankings[self._totalName][s][2]+self._divisionRankings[g][s][2])
        self._divisionRankings[self._totalName] = {s: v for s, v in sorted(self._divisionRankings[self._totalName].items(), key=lambda x: (x[1][0],-x[1][1],x[1][2]))}
        self.biggestLeadPerGroup(self._totalName)
        self.largestContribution(self._totalName)

    # detailed error calculation
    def calculateDetailedErrors(self):
        for s in self._solvers:
            self._detailedErrors[s] = self.getAllErrorsForSolver(s)

    def getAllErrorsForSolver(self,solver):
        invalidModel = dict()
        crash = dict()
        programError = dict()
        inputError = dict()
        wrongUnsat = dict()
        unverifiedSat = dict()
        unknown = dict()

        for bgroup in self._groups:
            results = self._res.getErrosForSolverGroup(solver,bgroup)
            for (s,g,tname,instance,filepath,t,res,exp,model,verified,output) in results:
                if verified == False:
                    invalidModel = invalidModel | self._errorDictEntry(s,g,tname,instance,filepath,t,res,exp,model,verified,output)
                elif verified == None and res:
                    unverifiedSat = unverifiedSat | self._errorDictEntry(s,g,tname,instance,filepath,t,res,exp,model,verified,output)
                elif res != exp and res != None:
                    wrongUnsat = wrongUnsat | self._errorDictEntry(s,g,tname,instance,filepath,t,res,exp,model,verified,output)
                elif "died with <Signals." in output:
                    crash = crash | self._errorDictEntry(s,g,tname,instance,filepath,t,res,exp,model,verified,output)
                elif res == None and "returned non-zero exit status" in output:
                    programError = programError | self._errorDictEntry(s,g,tname,instance,filepath,t,res,exp,model,verified,output)
                elif res == None and "b'(error" in output:
                    inputError = inputError | self._errorDictEntry(s,g,tname,instance,filepath,t,res,exp,model,verified,output)
                elif res == None:
                    unknown = unknown | self._errorDictEntry(s,g,tname,instance,filepath,t,res,exp,model,verified,output)
                else:
                    pass
        data = {"invalidModel" : invalidModel,"wrongClassified" : wrongUnsat, "crash" : crash, "programError" : programError, "inputError" : inputError, "unverifiedSat" : unverifiedSat, "unknown" : unknown}
        return data

    def _errorDictEntry(self,solver,group,track,instance_id,filepath,time,result,exp_res,model,verified,output):
        return {instance_id : {"solver" : solver, "group" : group, "track" : track, "filepath" : filepath, "result" : result, "expected_result" : exp_res, "model" : model, "verified" : verified, "time" : time, "output" : output}}


    #
    # Build Markdown page    
    def _solverString(self,solver):
        return f'+++<span style="color: {self._solverColour[solver]};font-weight: bold;">{solver}</span>+++'

    def _buildSectionTitle(self,g):
        return f"== {g}\n"
 

    #
    # par2 sorting
    def _buildGroupTablePar2(self,g):
        output_string = ""
        output_string += f"|===\n|Tool name |Correctly classified (Time ratio) |Declared satisfiable |Declared unsatisfiable |Declared unknown |Error |Crashes |Timeout |Par2Score |Total instances |Total instances w/o TO | Total time |Total time w/o TO\n"
        for s in [e[0] for e in sorted({solver : self._groupSolverData[solver][g]["par2"] for solver in self._solvers}.items(), key=lambda x: int(x[1]))]:
            data = self._groupSolverData[s][g]
            output_string += f'|{self._solverString(s)}|{data["classified"]} ({round(data["classified"]/data["time"],2)})|{data["sat"]}|{data["unsat"]}|{data["unknown"]}|{data["errors"]}|{data["crashes"]}|{data["timeouted"]}|{data["par2"]}|{round(data["total"],2)}|{round(data["totalWO"],2)}|{round(data["time"],2)}|{round(data["timeWO"],2)}\n'
        
        if self._ideal:
            data = self._groupSolverData[self._idealName][g]
            output_string += f'|{self._solverString(self._idealName)}|{data["classified"]} ({round(data["classified"]/data["time"],2)})|{data["sat"]}|{data["unsat"]}|{data["unknown"]}|{data["errors"]}|{data["crashes"]}|{data["timeouted"]}|{data["par2"]}|{round(data["total"],2)}|{round(data["totalWO"],2)}|{round(data["time"],2)}|{round(data["timeWO"],2)}\n'

        output_string += f"|===\n\n"
        return output_string

    def _buildBestGroupPar2(self,g):
        return f"[NOTE]\n====\nBest solver of this run {self._solverString(self._bestGroup[g][0])} got a PAR2 score of {self._bestGroup[g][1]}.\n====\n\n"

    #
    ## SMT Comp sorting
    def _buildGroupTable(self,g):
        output_string = ""
        #output_string += f"|===\n|Tool name |Correctly classified (Contribution) |Declared satisfiable |Declared unsatisfiable |Declared unknown |Error |Crashes |Timeout |Par2Score |Total instances |Total instances w/o TO | Total time |Total time w/o TO\n"
        output_string += f"|===\n|Solver |Cor. class. (contr.) |SAT |UNSAT |UNKN |ERR |CRA |TO |Par2 |Tot. inst. |Tot. inst. w/o TO | Tot. time |Tot. time w/o TO\n"
        for s in self._divisionRankings[g].keys():
            contribution = "None"
            if s in self._largestContribution[g]:
                contribution = round(self._largestContribution[g][s],2)
            data = self._groupSolverData[s][g]
            output_string += f'|{self._solverString(s)}|{data["classified"]} ({contribution})|{data["sat"]}|{data["unsat"]}|{data["unknown"]}|{data["errors"]}|{data["crashes"]}|{data["timeouted"]}|{data["par2"]}|{round(data["total"],2)}|{round(data["totalWO"],2)}|{round(data["time"],2)}|{round(data["timeWO"],2)}\n'
        
        if self._ideal:
            data = self._groupSolverData[self._idealName][g]
            output_string += f'|{self._solverString(self._idealName)}|{data["classified"]} (-)|{data["sat"]}|{data["unsat"]}|{data["unknown"]}|{data["errors"]}|{data["crashes"]}|{data["timeouted"]}|{data["par2"]}|{round(data["total"],2)}|{round(data["totalWO"],2)}|{round(data["time"],2)}|{round(data["timeWO"],2)}\n'
        

        output_string += f"|===\n\n"
        return output_string

    def _buildBestGroup(self,g):
        largest_con = 'no solver qualified for the largest contribution due to soundness errors.'
        if len(list(self._largestContribution[g].keys())) > 0:
            contr = [(s[0],round(s[1],2)) for s in sorted(self._largestContribution[g].items(), key=lambda x : -x[1])]
            largest_con = f'{self._solverString(contr[0][0])} hat the largest contribution with {contr[0][1]}.'

            if len(contr) > 1:
                largest_con+=' Other solvers contributed as follows: '
                for ss in contr[1:]:
                    largest_con+= f'{self._solverString(ss[0])}: {ss[1]},'
                largest_con=largest_con[:-1]+"."

        return f"[NOTE]\n====\n{self._solverString(self._biggestLead[g][0])} had the biggest lead with {round(self._biggestLead[g][1],2)} and {largest_con}\n====\n\n"

    def _buildPictureHTML(self,g):
        fileName = g.lower().replace(" ", "")+'.png'

        #fileName = "heu_"+fileName

        return f"\n\n[.text-center]\nimage::img/{fileName}[cactus]\n\n"

    def _buildHeader(self):
        return f"= Benchmark Results\nComparing {' '.join(self._solvers)} on {' '.join(self._groups)} \n:toc: left\n:stem:\n\n"

    # detailed errors
    def buildErrorTableForSolverKey(self,solver,key):
        table = f"|===\n|Benchmark |Track |Instance |File path |Result |Expected result |Verified |Time |Model |Output\n"
        for instance,e in self._detailedErrors[solver][key].items():
            table+=f"|{e['group']}|{e['track']}|{instance}|{e['filepath']}|{e['result']}|{e['expected_result']}|{e['verified']}|{e['time']}|{e['model']}|{e['output']}\n"
        table+=f"\n|===\n\n"
        return table

    def _buildDetailedErrorSection(self):
        errorKeys = (self._detailedErrors[self._solvers[0]].keys())
        output_string = self._buildSectionTitle("Detailed Errors")

        for s in self._solvers:
            if sum(list(len(e) for e in self._detailedErrors[s])) == 0:
                continue

            output_string+=f"=== {s} \n"
            for k in errorKeys:
                if len(self._detailedErrors[s][k]) > 0:
                    output_string+=f"+++ <details><summary> +++\n{k}+++ </summary><div> +++\n"
                    output_string+=self.buildErrorTableForSolverKey(s,k)
                    output_string+=f"\n+++ </div></details> +++\n\n"

        return output_string

    def buildMarkDownPage(self):
        if self._ideal:
            self._solvers = [s for s in self._solvers if s not in self._hiddenSolvers]

        self._output.write(self._buildHeader())
        for g in self._groups:
            self._output.write(self._buildSectionTitle(g))
            self._output.write(self._buildPictureHTML(g))
            self._output.write(self._buildGroupTable(g))
            self._output.write(self._buildBestGroup(g))
        self._output.write(self._buildSectionTitle(self._totalName))
        self._output.write(self._buildPictureHTML(self._totalName))
        self._output.write(self._buildGroupTable(self._totalName))
        self._output.write(self._buildBestGroup(self._totalName))

        self._output.write(self._buildDetailedErrorSection())


    #
    # Generate Plots
    def _generateCactus(self,g,path):
        start_at = 0
        fig = Figure(figsize=(6,3))
        ax = fig.subplots()
        fontP = FontProperties()
        fontP.set_size('small')
        usedSolvers = self._solvers.copy()
        if self._ideal:
            usedSolvers+=[self._idealName]

        for s in usedSolvers:
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

        #fileName = "heu_"+fileName

        fig.savefig(f"{path}/img/{fileName}",format="png",dpi=320,bbox_extra_artists=(lgd,), bbox_inches='tight')

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
        print(self._solvers)
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
