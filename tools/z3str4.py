import subprocess
import tempfile
import os
import shutil
import utils
import sys
import timer
import re

#path = utils.findProgram ("Z3BINARY","z3")

def run(params,eq,timeout,ploc,wd): #(params,eq,timeout,ploc,wd):
    path = ploc.findProgram ("Z3str4")
    if not path:
        raise "Z3 Not in Path"

    tempd = tempfile.mkdtemp ()
    smtfile = os.path.join (tempd,"out.smt")
    #tools.woorpje2smt.run (eq,smtfile,ploc)

    # hack to get rid of (get-model), not needed for z3 and returns 1 / Error if input is unsat
    f=open(eq,"r")
    copy=open(smtfile,"w")
    """for l in f:
        if "(get-model)" not in l:
            copy.write(l)
    
    f.close()
    copy.close() 
    """
    firstLine=None
    for l in f:
        if not l.startswith(";") and firstLine == None:
            firstLine = True
        # set (set-logic ALL) if no logic was set
        #if "(set-logic" not in l and firstLine:
        # if not setLogicPresent:
        #     copy.write("(set-logic ALL)\n")

        if firstLine:
            firstLine = False

        #if "(get-model)" not in l and "(check-sat)" not in l and "(exit)" not in l:
        for exp in ["\(get-model\)","\(check-sat\)","\(exit\)","\(set-info :status sat\)","\(set-info :status unsat\)"]:
            l = re.sub(exp, '', l)

        """
        if "(set-logic" in l:
            l = re.sub('\(set-logic.*?\)', '(set-logic QF_ALL)', l)
        """
        copy.write(l)

    copy.write("\n(check-sat)")
    f.close()
    copy.close()
    time = timer.Timer ()
    try:
        out = subprocess.check_output ([path]+["smt.string_solver=z3str3"]+params+["dump_models=true",smtfile],timeout=timeout,stderr=subprocess.STDOUT).decode().strip()
        #out = subprocess.check_output ([path]+params+["dump_models=true",smtfile],timeout=timeout).decode().strip()
            

    except subprocess.TimeoutExpired:
        return utils.Result(None,timeout*1000,True,1)
    
    except subprocess.CalledProcessError as e:
        
        #print(e.output)
        time.stop()
        out = "Error in " + eq + ": " + str(e)
        return utils.Result(None,time.getTime_ms(),False,1,out)

    time.stop()    
    
    if "NOT IMPLEMENTED YET!" in out and not time >= timeout:
        out = "Error in " + eq + ": " + out    


    shutil.rmtree (tempd)
    if "unsat" in out:
        return utils.Result(False,time.getTime_ms (),False,1,out)
    elif "sat" in out:
        return utils.Result(True,time.getTime_ms(),False,1,out,"\n".join(out.split("\n")[1:]))
    elif time.getTime() >= timeout:
        return utils.Result(None,timeout*1000,True,1)
    return utils.Result(None,time.getTime_ms  (),False,1,out)

def addRunner (addto):
    #addto['z3str4FSE'] = run
    from functools import partial
    params = { #"-arr-t" : ["smt.str.tactic=arr","smt.arith.solver=2","smt.str.rewriter_tactic=true"],
               #"-las-t" : ["smt.str.tactic=las","smt.arith.solver=2","smt.str.rewriter_tactic=true"],
               #"-seq-t" : ["smt.str.tactic=seq","smt.arith.solver=2","smt.str.rewriter_tactic=true"],
               #"-t" : ["smt.arith.solver=2","smt.str.tactic=all","smt.str.rewriter_tactic=true"],
               #"-arr-f" : ["smt.str.tactic=arr","smt.arith.solver=2","smt.str.rewriter_tactic=false"],
               #"-las-f" : ["smt.str.tactic=las","smt.arith.solver=2","smt.str.rewriter_tactic=false"],
               #"-seq-f" : ["smt.str.tactic=seq","smt.arith.solver=2","smt.str.rewriter_tactic=false"],
               #"-las" : ["smt.arith.solver=2","smt.string_solver=z3str3","smt.str.tactic=las"],
               ## 
               #"-arr" : ["smt.arith.solver=2","smt.string_solver=z3str3","smt.str.tactic=arr"],               
               #"-alwayscf" : ["smt.arith.solver=2","smt.string_solver=z3str3","smt.str.tactic=alwayscf"],
               #"-nevercf" : ["smt.arith.solver=2","smt.string_solver=z3str3","smt.str.tactic=nevercf"],
               #"-regex" : ["smt.arith.solver=2","smt.string_solver=z3str3","smt.str.tactic=regex"],
               #"-seq" : ["smt.arith.solver=2","smt.string_solver=z3str3","smt.str.tactic=seq"],
               #"-c-sharing" : ["smt.str.share_constraints=true","smt.arith.solver=2","smt.string_solver=z3str3","smt.str.tactic=3probe"],
               #"-no-c-sharing" : ["smt.str.share_constraints=false","smt.arith.solver=2","smt.string_solver=z3str3","smt.str.tactic=3probe"],
               "" : ["smt.arith.solver=2","smt.string_solver=z3str3","smt.str.tactic=3probe"] # 3probe became standard
            }

    for i in params.keys():
        #addto['Z3str3-RegEx-fa4a14cd-'+str(i)] = partial(run,params[i])
        addto['Z3str4'+i] = partial(run,params[i])

if __name__ == "__main__":
    print(run (sys.argv[1],None))

