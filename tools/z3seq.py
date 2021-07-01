import subprocess
import tempfile
import os
import shutil
import utils
import sys
import timer
import re

#path = utils.findProgram ("Z3BINARY","z3")

def run (eq,timeout,ploc,wd):
    path = ploc.findProgram ("Z3")
    if not path:
        raise "Z3 Not in Path"

    tempd = tempfile.mkdtemp ()
    smtfile = os.path.join (tempd,"z3seq_out.smt")

    setLogicPresent = False
    #set logic present?
    with open(eq) as flc:
        for l in flc:
            if not l.startswith(";") and '(set-logic' in l:
                setLogicPresent = True

    # hack to insert (get-model), which is needed for cvc4 to output a model
    f=open(eq,"r")
    copy=open(smtfile,"w")
    firstLine = None

    for l in f:
        if not l.startswith(";") and firstLine == None:
            firstLine = True

        if firstLine:
            firstLine = False

        for exp in ["\(get-model\)","\(check-sat\)","\(exit\)","\(set-info :status sat\)","\(set-info :status unsat\)"]:
            l = re.sub(exp, '', l)

        copy.write(l)

    copy.write("\n(check-sat)")
    f.close()
    copy.close()

    time = timer.Timer ()
    try:
        out = subprocess.check_output ([path,"smt.string_solver=seq","dump_models=true",smtfile],timeout=timeout)
        out = out.decode().strip()
    
    except subprocess.TimeoutExpired:
        return utils.Result(None,timeout*1000,True,1)
    except subprocess.CalledProcessError as e:
        time.stop()
        out = "Error in " + eq + ": " + str(e.output)
        return utils.Result(None,time.getTime_ms(),False,1,out)
    time.stop()    
    


    if "NOT IMPLEMENTED YET!" in out and not time.getTime() >= timeout:
        out = "Error in " + eq + ": " + out    
    shutil.rmtree (tempd)
  
    
    if "unsat" in out:
        return utils.Result(False,time.getTime_ms (),False,1,out)
    elif "sat" in out:
        return utils.Result(True,time.getTime_ms (),False,1,out,"\n".join(out.split("\n")[1:]))
    elif time.getTime() >= timeout:
        return utils.Result(None,time.getTime_ms(),True,1)    
    
    return utils.Result(None,time.getTime_ms  (),False,1,out)

def addRunner (addto):
    addto['Z3seq'] = run


if __name__ == "__main__":
    print(run (sys.argv[1],None))

