import sys
import subprocess
import os
import shutil
import timer
import utils
import ntpath

#tool = utils.findProgram ("WOORPJESMTBINARY","woorpjeSMT")

def extractFile(eqfile,sfile):
    fileName=ntpath.basename(eqfile)
    #dest="/root/words/benchmarkExtract/benchmarkTool/kaluzaSmallSatExtracted/"
    #shutil.copyfile(eqfile, dest+fileName)
    shutil.copyfile(eqfile, dest+"/simplify/"+fileName)

def run (eqfile,timeout,ploc,wd):
    #sfile = "/root/words/benchmarkExtract/benchmarkTool/kaluzaSmallSatExtracted/test.smt"
    tool = ploc.findProgram ("woorpjeSMT")
    if tool:
        try:
            smtmodel = os.path.join (wd,"smtmodel.smt")
            time = timer.Timer ()
            out = subprocess.check_output ([tool, '--smtmodel',smtmodel,'--solver', '1' ,'-S','1','--smttimeout', '10', eqfile],timeout=timeout)
            #out = subprocess.check_output ([tool,'--simplify', eqfile],timeout=timeout)
            #print(out.decode().strip())
            time.stop ()
            #extractFile(eqfile,sfile)
            with open(smtmodel) as f:
                    model = f.read()
                    return utils.Result(True,time.getTime(),False,0,out,model)
        except subprocess.CalledProcessError as ex:
            time.stop ()
            if ex.returncode == 0:
                extractFile(eqfile,sfile)
            if ex.returncode == 10 or ex.returncode == 20:
                return utils.Result(None,time.getTime (),False,0,ex.output)
            elif ex.returncode == 1:
                return utils.Result(False,time.getTime (),False,0,ex.output)
            elif ex.returncode == 134 or ex.returncode == 255:
                return utils.Result(None,0,False,0,ex.output)
            else:
                return utils.Result(None,time.getTime (),False,0,ex.output)
        except subprocess.TimeoutExpired:
            #extractFile(eqfile,sfile)
            return utils.Result(None,timeout,True,0)


    else:
        raise "woorpje Not in Path"

def addRunner (addto):
    addto['woorpje'] = run

    
if __name__ == "__main__":
    print (run (sys.argv[1],None))
