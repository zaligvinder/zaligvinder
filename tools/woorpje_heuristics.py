import sys
import os
import subprocess
import shutil
import timer
import utils
import subprocess


def run (eqfile,timeout,heuristicNo,smtSolverNo,heuristic_param_name,param,ploc,wd):
    tool = ploc.findProgram ("woorpjeSMT")

    if tool:
        SMTSolverCalls = 0
        try:
            time = timer.Timer ()
            smtmodel = os.path.join (wd,"model.smt")
            p = subprocess.run([tool,'--smtmodel',smtmodel,'--solver', '4' ,'-S',str(smtSolverNo),'--smttimeout', '15', '--levisheuristics',str(heuristicNo),str(heuristic_param_name),str(param), eqfile],  stdout=subprocess.PIPE, encoding='ascii', universal_newlines = True,timeout=timeout)
            time.stop ()
            output = p.stdout.splitlines()

            for l in output:
                if l.startswith("SMTCalls:"):
                    SMTSolverCalls = [int(x) for x in l.split(" ") if x.isdigit()][0]


            if p.returncode == 0:
                with open(smtmodel) as f:
                    model = f.read()
                    return utils.Result(True,time.getTime(),False,SMTSolverCalls,"\n".join(output),model)
            elif p.returncode == 10 or p.returncode == 20:
                return utils.Result(None,time.getTime (),False,SMTSolverCalls)
            elif p.returncode == 1:
                return utils.Result(False,time.getTime (),False,SMTSolverCalls)
            else:
                return utils.Result(None,time.getTime (),False,SMTSolverCalls)
        except Exception as  e:
            time.stop ()
            return utils.Result(None,timeout,True,SMTSolverCalls)

    else:
        raise "woorpje Not in Path"

def runVariableTermRatio (eqfile,timeout,solver,ratio,ploc,wd):
    return run (eqfile,timeout,0,solver,"--VarTerminalRation",ratio,ploc,wd)

def runWaitingListLimitReached (eqfile,timeout,solver,ratio,ploc,wd):
    return run (eqfile,timeout,1,solver,"--WaitingLimit",ratio,ploc,wd)

def runEquationGrowth (eqfile,timeout,solver,ratio,ploc,wd):
    return run (eqfile,timeout,2,solver,"--growth",ratio,ploc,wd)

def runEquationGrowthExceeded (eqfile,timeout,solver,ratio,ploc,wd):
    return run (eqfile,timeout,3,solver,"--eqLength",ratio,ploc,wd)

def runNone (eqfile,timeout,solver,ratio,ploc,wd):
    return run (eqfile,timeout,4,solver,"--VarTerminalRation",0,ploc,wd)


smtsolvers= {"z3seq" : 0,
             "cvc4" : 1,
             "z3str3": 2
}

runName = {
    "variableTermRatio" : runVariableTermRatio,
    "waitingListLimit" : runWaitingListLimitReached,
    "equationGrowth" : runEquationGrowth,
    "equationLength" : runEquationGrowthExceeded,
    "none" : runNone
    }


class RunProxy:
    def __init__ (self,func,smtsolver,param):
        self._func = func
        self._smtsolver = smtsolver
        self._param = param

    def __call__ (self,eq,timeout,ploc,wd):
        return self._func (eq,timeout,smtsolvers[self._smtsolver],self._param,ploc,wd)
            

def makeRunner (func,smtsolver,param):
    return RunProxy (func,smtsolver,param)

def addRunners (runname,solvers,param,addTo):
    for solver in solvers:
        assert(solver in smtsolvers)
        name = "{0}_{1}_{2}".format (runname,param,solver)
        assert(runname in runName)
        addTo[name] = makeRunner (runName[runname],solver,param)

