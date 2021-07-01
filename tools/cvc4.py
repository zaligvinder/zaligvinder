import subprocess
import tempfile
import os
import shutil
import sys
import timer
import utils
import re

def run (eq,timeout,ploc,wd,solver="1",param="60"):
    path = ploc.findProgram ("cvc4")
    if not path:
        raise "Z3 Not in Path"
    tempd = tempfile.mkdtemp ()
    smtfile = os.path.join (tempd,"cvc4_out.smt")

    setLogicPresent = False
    #set logic present?
    with open(eq) as flc:
        for l in flc:
            if not l.startswith(";") and '(set-logic' in l:
                setLogicPresent = True

    f=open(eq,"r")
    copy=open(smtfile,"w")
    firstLine = None 
    
    if not setLogicPresent:
        copy.write("(set-logic QF_SLIA)\n")


    for l in f:
        if not l.startswith(";") and firstLine == None:
            firstLine = True

        if firstLine:
            firstLine = False 
        for exp in ["\(get-model\)","\(check-sat\)","\(exit\)","\(set-info :status sat\)","\(set-info :status unsat\)"]:
            l = re.sub(exp, '', l)
        
        
        if "(set-logic" in l:
            l = re.sub('\(set-logic.*?\)', '(set-logic QF_SLIA)', l)
        copy.write(l)

    copy.write("\n(check-sat)")
    f.close()
    copy.close() 
    

    time = timer.Timer ()
    try:
        out = subprocess.check_output ([path,"--lang","smtlib2.6","--no-interactive","--no-interactive-prompt","--strings-exp","--dump-models","--tlimit-per",str(timeout)+"000",smtfile],timeout=int(timeout)).decode().strip()
    except subprocess.TimeoutExpired:
        return utils.Result(None,timeout*1000,True,1)
    except subprocess.CalledProcessError as e:
        time.stop()
    
        if time.getTime() >= timeout:
            return utils.Result(None,time.getTime_ms(),True,1)
        else:
            out = "Error in " + eq + ": " + str(e.output)
            return utils.Result(None,time.getTime_ms(),False,1,out)

    time.stop ()
    shutil.rmtree (tempd)
    if "unsat" in out:
        return utils.Result(False,time.getTime_ms (),False,1,out)
    elif "sat" in out:
        return utils.Result(True,time.getTime_ms (),False,1,out,"\n".join(out.split("\n")[1:]))
    elif time.getTime() >= timeout:
        return utils.Result(None,time.getTime_ms (),True,1)
    elif "unknown" in out:
        return utils.Result(None,time.getTime_ms  (),False,1,out)
    else:
        # must be an error
        return utils.Result(None,time.getTime_ms (), False,1,f"Error in {eq} # stdout: {out}")



def addRunner (addto):
    addto['CVC4'] = run

if __name__ == "__main__":
    print(run (sys.argv[1],None))

