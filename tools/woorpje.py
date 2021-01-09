import subprocess
import tempfile
import os
import shutil
import utils
import sys
import timer
def run (params,eq,timeout,ploc,wd):
    path = ploc.findProgram ("woorpjeSMT")
    if not path:
        raise "WoorpjeSMT Not in Path"

    tempd = tempfile.mkdtemp ()
    smtfile = os.path.join (tempd,"out.smt")
    time = timer.Timer ()
    myerror = ""
    SMTSolverCalls = 0
    try:
            smtmodel = os.path.join (wd,"smtmodel.smt")
            time = timer.Timer ()
            #out = subprocess.check_output ([path, '--smtmodel',smtmodel,'--smttimeout', '15','--solver','4']+params+[eq],timeout=timeout)
            p = subprocess.run([path,'--smtmodel',smtmodel,'--solver', '4' ,'--smttimeout', '15']+params+[eq],  stdout=subprocess.PIPE, encoding='ascii', universal_newlines = True,timeout=timeout)
            
            time.stop ()
            output = p.stdout.splitlines()
            for l in output:
                if l.startswith("SMTCalls:"):
                    SMTSolverCalls = [int(x) for x in l.split(" ") if x.isdigit()][0]


            if p.returncode == 0:
                with open(smtmodel) as f:
                        #model = f.read()
                        model = ""
                        for l in f:
                            #model += "".join(l.split("_")) 
                            model+=l.replace("(define-fun _", "(define-fun ", 1).replace("_()", "()", 1) + "\n"
                        
                        return utils.Result(True,time.getTime(),False,SMTSolverCalls,"\n".join(output),model)

            elif p.returncode == 10 or p.returncode == 20:
                return utils.Result(None,time.getTime (),False,SMTSolverCalls,"\n".join(output) )
            elif p.returncode == 1:
                return utils.Result(False,time.getTime (),False,SMTSolverCalls,"\n".join(output))
            else:
                return utils.Result(None,time.getTime (),False,SMTSolverCalls,"\n".join(output))
    except Exception as  e:
        time.stop ()
        return utils.Result(None,timeout,True,SMTSolverCalls,str(e))

def addRunner (addto):
    from functools import partial

    solvers = { "z3seq" : 0, "cvc4" : 1, "z3str3" : 2}
    heuristics = { "VTR" : "VarTerminalRation", # VariableTerminalRatio
                   "WLR" :  "WaitingLimit",   # WaitingListLimitReached
                   "EG" :  "growth",                   # EquationGrowth
                   "ELE" :  "eqLength",        # EquationLengthExceeded
                   "N" : "" }                                  # None
    values = [[3.14,0.15,1.12358],[314,15,1123],[0.15,1.075,2],[2,20,400],[]]

    paramList = []


    paramList = ["-S","1"] + ["--levisheuristics","4"]
    addto["woorpje"] = partial(run,paramList)
    return 0


    for i,h in enumerate(heuristics):       # heuristic name
        for s in solvers:                   # assisting solver
            p = heuristics[h]          # paramter for heuristic

            if len(values[i]) == 0:
                paramList = ["-S",str(solvers[s])] + ["--levisheuristics",str(i)]
                solverName = 'woorpje-'+str(s)+'-'+str(h)
                addto[solverName] = partial(run,paramList)
            else:    
                for v in values[i]:         # values for parameter
                    paramList = ["-S",str(solvers[s])] + ["--levisheuristics",str(i)] + ["--"+str(p), str(v)]
                    solverName = 'woorpje-'+str(s)+'-'+str(h)+"-"+str(v)
                    addto[solverName] = partial(run,paramList)


if __name__ == "__main__":
    print(run (sys.argv[1],None))



