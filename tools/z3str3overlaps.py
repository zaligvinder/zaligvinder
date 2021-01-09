import subprocess
import tempfile
import os
import shutil
import utils
import sys
import timer


#path = utils.findProgram ("Z3BINARY","z3")

def run (params,eq,timeout,ploc,wd):
    path = ploc.findProgram ("Z3Overlaps")
    if not path:
        raise "Z3BV Not in Path"

    tempd = tempfile.mkdtemp ()
    smtfile = os.path.join (tempd,"out.smt")
    #tools.woorpje2smt.run (eq,smtfile,ploc)

    # hack to get rid of (get-model), not needed for z3 and returns 1 / Error if input is unsat
    f=open(eq,"r")
    copy=open(smtfile,"w")
    for l in f:
        if "(get-model)" not in l:
            copy.write(l)
    
    f.close()
    copy.close() 

    time = timer.Timer ()
    myerror = ""
    try:
        out = subprocess.check_output ([path,"smt.string_solver=z3str3","dump_models=true","smt.str.search_overlaps=true","smt.str.fixed_length_iterations=5","smt.str.pre_milliseconds=2500"]+params+[smtfile],timeout=timeout,stderr=subprocess.STDOUT).decode().strip()
    except subprocess.TimeoutExpired:
        return utils.Result(None,timeout,True,1)
    
    except subprocess.CalledProcessError as e:
        time.stop()
        out = "Error in " + eq + ": " + str(e)
        return utils.Result(None,time.getTime(),False,1,out)

    time.stop()    

    if "NOT IMPLEMENTED YET!" in out and not time >= timeout:
        out = "Error in " + eq + ": " + out    
    
    
    shutil.rmtree (tempd)
    if "unsat" in out:
        return utils.Result(False,time.getTime (),False,1,out)
    elif "sat" in out:
        return utils.Result(True,time.getTime(),False,1,out,"\n".join(out.split("\n")[1:]))
    elif time.getTime() >= timeout:
        return utils.Result(None,timeout,True,1)
    
    return utils.Result(None,time.getTime  (),False,1,out)

def addRunner (addto):
    from functools import partial
    params = { "sharing-on" : ["smt.str.share_constraints=true"],
               "sharing-off" : ["smt.str.share_constraints=false"]}

    for i in params:
        addto['z3str4-murphy-'+str(i)] = partial(run,params[i])


if __name__ == "__main__":
    print(run (sys.argv[1],None))

