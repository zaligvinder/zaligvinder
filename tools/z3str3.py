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

    """
    tempd = tempfile.mkdtemp ()
    smtfile = os.path.join (tempd,"out.smt")
    #tools.woorpje2smt.run (eq,smtfile,ploc)

    # hack to get rid of (get-model), not needed for z3 and returns 1 / Error if input is unsat
    f=open(eq,"r")
    copy=open(smtfile,"w")
    for l in f:
        if "(get-model)" not in l and not l.startswith("(set-info"):
            copy.write(l)

    f.close()
    copy.close()
    """


    tempd = tempfile.mkdtemp ()
    smtfile = os.path.join (tempd,"cvc4_out.smt")
    #tools.oorpje2smt.run (eq,smtfile,ploc)

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

    """if not setLogicPresent:
        copy.write("(set-logic QF_ALL)\n")
    """

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
        out = subprocess.check_output ([path,"smt.string_solver=z3str3","dump_models=true",smtfile],timeout=timeout)
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
    addto['Z3str3'] = run


if __name__ == "__main__":
    print(run (sys.argv[1],None))

