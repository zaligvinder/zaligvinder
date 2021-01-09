import subprocess
import tempfile
import os
import shutil
import sys
import timer
import utils

#path = shutil.which ("cvc4")
#path = utils.findProgram ("CVC4BINARY","cvc4")


def run (eq,timeout,ploc,wd,solver="1",param="60"):
    path = ploc.findProgram ("cvc4")
    if not path:
        raise "Z3 Not in Path"

    tempd = tempfile.mkdtemp ()
    smtfile = os.path.join (tempd,"out.smt")
    #tools.woorpje2smt.run (eq,smtfile,ploc)

    # hack to insert (get-model), which is needed for cvc4 to output a model
    f=open(eq,"r")
    copy=open(smtfile,"w")
    firstLine = None 
    for l in f:
        if not l.startswith(";") and firstLine == None:
            firstLine = True
        # set (set-logic ALL) if no logic was set
        if "(set-logic" not in l and firstLine:
            copy.write("(set-logic ALL)\n")    
       
        if firstLine:
            firstLine = False 
        
        if "(get-model)" not in l:
            copy.write(l)

    copy.write("\n(get-model)")
    f.close()
    copy.close() 

    time = timer.Timer ()
    try:
        out = subprocess.check_output ([path,"--lang","smt2","-m","--no-interactive","--no-interactive-prompt","--strings-exp","--produce-models","--tlimit-per",str(timeout)+"000",smtfile],timeout=timeout).decode().strip()
    except subprocess.TimeoutExpired:
        return utils.Result(None,timeout,True,1)
    except subprocess.CalledProcessError as e:
        time.stop()
        
        if time.getTime() >= timeout:
            return utils.Result(None,timeout,True,1)
        else:
            out = "Error in " + eq + ": " + str(e)
            if "SIG" in str(e):          
                return utils.Result(None,time.getTime(),False,1,out)
            else:
                # treat unsupported operations as timeout:
                return utils.Result(None,timeout,True,1,str(e))
    
    time.stop ()
    shutil.rmtree (tempd)
    
    if "unsat" in out:
        return utils.Result(False,time.getTime (),False,1,out)
    elif "sat" in out:
        return utils.Result(True,time.getTime(),False,1,out,"\n".join(out.split("\n")[1:]))
    elif time.getTime() >= timeout:
        return utils.Result(None,timeout,True,1)

    return utils.Result(None,time.getTime  (),False,1,out)

def addRunner (addto):
    addto['cvc4'] = run


if __name__ == "__main__":
    print(run (sys.argv[1],None))

