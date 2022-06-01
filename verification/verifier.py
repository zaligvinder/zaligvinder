import os 
import tempfile
import shutil
import re
import sys


# import all tools
from tools import *

class Verifier:
    def _extractAssignment(self,model):
        s = ""
        for l in model:
            s+=l.rstrip("\n")
        if s.startswith("(model"):
         return s[len("(model"):-1]
        elif s.startswith("sat("):
            return s[len("sat("):-1]
        
        else:
            return s[len("("):-1]

    def _translateSMTFile(self,filepath):
        
        setLogicPresent = False
        #set logic present?
        #with open(filepath) as flc:
        #    if '(set-logic' in flc.read():
        #        setLogicPresent = True

        #if not setLogicPresent:
        #    yield "(set-logic ALL)\n"
        
        #with open(filepath) as flc:
        #    if '(set-logic' in flc.read():
        #        yield "(set-logic ALL)\n"
        
        f=open(filepath,"r")
        matchingBraces = 0
        firstMatchFound = False
        currentWord = ""
        in_qutation = False
        previous_char = None
        for l in f:
            if l.startswith(";"):
                continue
            for a in l:
                if a == "(" and not in_qutation:
                    matchingBraces+=1
                    firstMatchFound = True
                if a == ")" and not in_qutation:
                    matchingBraces-=1

                if firstMatchFound == True:
                    if a == '"':# and not previous_char == '\\':
                        in_qutation = not in_qutation
                    previous_char = a
                    currentWord+=a

                if matchingBraces == 0 and len(currentWord) > 0 and firstMatchFound:
                    yield currentWord
                    firstMatchFound = False
                    currentWord = ""
        f.close()

    def _modifyInputFile(self,tempd,model,filepath):
        smtfile = os.path.join (tempd,f"veri_out.smt")
        copy=open(smtfile,"w")
       
        logicSet=False
        firstLine = None
        declareBlockReached = False
        for l in self._translateSMTFile(filepath):
            if not l.startswith(";") and firstLine == None:
                firstLine = True

            # set (set-logic ALL) if no logic was set
            #if "(set-logic" not in l and firstLine:
            if not logicSet:
                copy.write("(set-logic ALL)\n")    
                logicSet = True

            if firstLine:
                firstLine = False

            if "(define-fun" in l or "(declare-fun" in l or "(declare-const" in l: 
                if declareBlockReached == False:
                    declareBlockReached = True   
            elif declareBlockReached == True:
                copy.write("\n"+model+"\n")
                declareBlockReached = None
            
            if declareBlockReached == None and "(get-model)" not in l and "(check-sat)" not in l:
                copy.write(l+"\n")
        copy.write("\n(check-sat)")
        copy.close()
        
        
        return smtfile

    def getSolver(self,solvername):
        import importlib
        if os.path.exists("tools/"+solvername+".py"):
            full_module_name = "tools." + solvername
            thisSolver = importlib.import_module(full_module_name)
            return thisSolver
        return None

    def verifyModel (self,res,ploc,filepath,timeout=0,verifiers=dict(),smtlib26=False):
        assert(res.result == True)
        verifierCount = len(verifiers)
        if verifierCount > 0:
            vRes = None
            foundModel = self._extractAssignment(res.model)#.replace("\\u{9}","\x09")

            ####
            import re
            #m = re.fullmatch(r,"\\u{(.*?)}",foundModel)
            #print(m)
            
            #print(foundModel)
            #if not smtlib26:
            #foundModel = re.sub('u{(.)}', r'x0\1', foundModel)
            #foundModel = re.sub('u{(..)}', r'x\1', foundModel)  
            ####
            #print(foundModel)            

            tempd = tempfile.mkdtemp ()
            assertedInputFile = self._modifyInputFile(tempd,foundModel,filepath)
            for vn in verifiers:
                v = self.getSolver(vn)
                if v == None:
                    continue
                
                
                thisRes = v.run(assertedInputFile,timeout,ploc,os.path.abspath(".")).result
                #print(thisRes,assertedInputFile)
               
                # work arround if we verified the model at least once
                if (thisRes == True and vRes == None) or (thisRes == None and vRes == True):
                    vRes = True
                elif (thisRes == False and vRes == None) or (thisRes == None and vRes == False):
                    vRes = False
                else:
                    vRes = vRes and thisRes
            res.verified = vRes
            
            shutil.rmtree (tempd)
        return res
