import re
"""
def classifyInstance (instance,keywords):

    keywordDistribution = dict()

    for k in keywords:
        keywordDistribution[k] = 0

    f=open(instance,"r")
    for l in f:
        for k in keywords:
            if k in l:
                keywordDistribution[k]+=sum(1 for _ in re.finditer(r'\b%s\b' % re.escape(k), l))

    return keywordDistribution



instance = "models/PyEx/pymongomongoclient/4deb59ae6057bbd6d20e2488fe265bbe892b98da579d9d1c20ce269e.smt2"
keywords = ["and","assert","not",
            "str.++","str.len","str.<",
            "str.to.re","str.in.re",
            "str.<=","str.at","str.substr","str.prefixof","str.suffixof","str.contains","str.indexof","str.replace","str.is_digit","str.to.int","int.to.str",
            "Bool","String","Int"]

#print(classifyInstance(instance,keywords))


#print("track04".lower().split(" ", 1)[0])

keywordDistribution = {"test" : 10, "lol": 20, "xxx" : 5}


items = [k[0] for k in sorted(keywordDistribution.items(), key = lambda kv:(kv[1], kv[0]))]
items.reverse()
print(items[:100])



exit()


line="lolol str.++xx.init.xxx x yyy lolol"
for k in re.findall(r'\bstr\.[\S]+\s', line):
    print(k)

print("str.++" in line)



exit()
"""
#from os.path import dirname, basename, isfile, join
#import glob
#modules = glob.glob(join("./tools/", "*.py"))
#__all__ = [ basename(f)[:-3] for f in modules if isfile(f) and not f.endswith('__init__.py')]


#print(__all__)



#from tools import *

#print(__all__)



l = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]

i = 1
j = 1

max_points = 3

accumulation_cout = round(len(l) / max_points)

ll = []


import statistics

while True:
  if j*accumulation_cout+1 < len(l):
    ll.append(statistics.mean(l[i:(accumulation_cout*j+1)]))
    i=accumulation_cout+i 
  else: 
    if i < len(l)-1:
      ll.append(statistics.mean(l[i:len(l)-1]))
    break
  j+=1

print(ll)








exit()
text = """
(model
(define-fun __var_0xINPUT_513641__() String "array")
(define-fun ___woorpje_diseq_pref0__() String "")
(define-fun ___woorpje_diseq_suf_l0__() String "")
(define-fun ___woorpje_diseq_suf_r0__() String "")
(define-fun ___woorpje_diseq_pref1__() String "")
(define-fun ___woorpje_diseq_suf_l1__() String "")
(define-fun ___woorpje_diseq_suf_r1__() String "")
)
"""

model = ""

for l in text.split("\n"):
  model+=l.replace("(define-fun _", "(define-fun ", 1).replace("_()", "()", 1) + "\n"

  #print("".join(l.split("_")))

print(model)




exit()

import os
def getSolverRun(solvername):
  import importlib
  if os.path.exists("tools/"+solvername+".py"):
    full_module_name = "tools." + solvername
    thisSolver = importlib.import_module(full_module_name)
    return thisSolver
  return None



print(getSolverRun("cvc4").run)


exit()

solvers = { "z3seq" : 0, "cvc4" : 1, "z3str3" : 2}
heuristics = { "VTR" : "VarTerminalRation", # VariableTerminalRatio
               "WLR" :  "WaitingLimit",   # WaitingListLimitReached
               "EG" :  "groth",                   # EquationGrowth
               "ELE" :  "eqLength",        # EquationLengthExceeded
               "N" : "" }                                  # None
values = [[3.14,0.15,1.12358],[314,15,1123],[0.15,1.075,2],[2,20,400],[]]

paramList = []

for i,h in enumerate(heuristics):       # heuristic name
    for s in solvers:                   # assisting solver
        p = h          # paramter for heuristic

        if len(values[i]) == 0:
            paramList = ["-S",str(solvers[s])] + ["--levisheuristics",str(i)]
            solverName = 'woorpje-'+str(s)+'-'+str(p)
            addto[solverName] = partial(run,paramList)
            continue

        for v in values[i]:         # values for parameter
            paramList = ["-S",str(solvers[s])] + ["--levisheuristics",str(i)] + ["--"+str(p), str(v)]
            solverName = 'woorpje-'+str(s)+'-'+str(p)+"-"+str(v)
            addto[solverName] = partial(run,paramList)

exit()
def _translateSMTFile(filepath):
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
                    if a == '"' and not previous_char == '\\':
                        in_qutation = not in_qutation
                    previous_char = a
                    currentWord+=a

                if matchingBraces == 0 and len(currentWord) > 0 and firstMatchFound:
                    yield currentWord
                    currentWord = ""
        print("Leftovers? " + currentWord)
        f.close()



def _modifyInputFile(filepath):
    #smtfile = os.path.join (tempd,"out.smt")
    #f=open(filepath,"r")
    #copy=open(smtfile,"w")
    firstLine = None
    #modelEntered = False
    declareBlockReached = False
    for l in _translateSMTFile(filepath):
        print(l)


        """
        if not l.startswith(";") and firstLine == None:
            firstLine = True

        # set (set-logic ALL) if no logic was set
        if "(set-logic" not in l and firstLine:
            copy.write("(set-logic ALL)\n")

        if firstLine:
            firstLine = False

        if "(define-fun" in l or "(declare-fun" in l:
            if declareBlockReached == False:
                declareBlockReached = True
        elif declareBlockReached == True:
            copy.write(model)
            declareBlockReached = None
        elif "(get-model)" not in l:
            copy.write(l)
        """

        #if modelEntered == False and "(check-sat)" in l: 
        #    for variable in assignment:
        #        copy.write("(assert (= "+variable+" "+str(assignment[variable])+"))\n")
        #    modelEntered  = True

        #if "(get-model)" not in l:
        #    copy.write(l)

    copy.write("\n(get-model)")
    f.close()
    copy.close()
    return smtfile

#_modifyInputFile("models/banditfuzz/final/1565555073.52163651128761955775465260_1.smt")

#exit()
text = '''(model
(define-fun N () String "asdasd asd ")
(define-fun M () String "")
(define-fun G () String "")
)'''

text = '''(model 
  (define-fun G () String
    "sdfsdfs")
  (define-fun M () String
    "")
  (define-fun N () String
    "")
)'''

text = '''(model
(define-fun value () String " Q")
(define-fun key () String "cache-control")
)'''

text = '''(model 
  (define-fun var133 () String
    "")
  (define-fun var128 () String
    "")
  (define-fun var134 () String
    "")
  (define-fun var122 () String
    "\\<Script\\>0;\\</scrIpt \\>")
  (define-fun var137 () String
    "")
  (define-fun var126 () String
    "")
  (define-fun var138 () Int -
    39)
  (define-fun var135 () Int
    1)
  (define-fun var131 () String
    "")
  (define-fun var132 () String
    "")
  (define-fun var124 () String
    "")
  (define-fun var116 () String
    "</TD><TD STYLE=TEXT-ALIGN:right;><FONT SIZE=1>\\<Script\\>0;\\</scrIpt \\></FONT></TD></TR>")
  (define-fun var118 () String
    "</TD><TD STYLE=TEXT-ALIGN:right;><FONT SIZE=1>\\<Script\\>0;\\</scrIpt \\></FONT></TD></TR>")
  (define-fun var119 () String
    "</TD><TD STYLE=TEXT-ALIGN:right;><FONT SIZE=1>\\<Script\\>0;\\</scrIpt \\>")
  (define-fun var121 () String
    "</TD><TD STYLE=TEXT-ALIGN:right;><FONT SIZE=1>")
  (define-fun var123 () String
    "</TD><TD STYLE=TEXT-ALIGN:right;><FONT SIZE=1>")
  (define-fun var125 () String
    "</TD><TD STYLE=TEXT-ALIGN:right;><FONT SIZE=1>")
  (define-fun var127 () String
    "</TD><TD STYLE=TEXT-ALIGN:right;><FONT SIZE=1>")
  (define-fun var129 () String
    "")
)'''


text = '''
(model 
  (define-fun s1303 () Int
    - 100)
  (define-fun s1346 () String
    "<html>*<head>*<title>SQL Database for </title>*<!--*)Generated by JXML2SQL (http://jxml2sql.sourceforge.net)*-->*</head>*<body bgcolor='White'>*<h1></h1>*<blockquote></blockquote><p>*<table><tr><td>*<b>Table</b>: <br>*<b>Description</b>: <br>*</td></tr><tr><td><table border=1 width='100%'>*<tr><td></td><td></td><td>()</td><td>  </td></tr>*<tr><td></td><td></td><td>()</td><td> </td></tr>*</table></td></tr></table>*<p>*</body>*</html>")
  (define-fun s261 () String
    "description")
    "<html>*<head>*<title>SQL Database for </title>*<!--*)Generated by JXML2SQL (http://jxml2sql.sourceforge.net)*-->*</head>*<body bgcolor='White'>*<h1>")
)'''


text = '''
(model 
  (define-fun var6 () Int
    1143)
  (define-fun var3 () String
    " ")
  (define-fun var0 () String
    re.allchar!tmp23)
  (define-fun var5 () Int
    1679)
  (define-fun var7 () Int
    0)
  (define-fun var4 () String
    "                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ")
  (define-fun var8 () Int
    0)
  (define-fun var2 () String
    "")
  (define-fun var1 () String
    "                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ")
  (define-fun var12 () Bool
    false)
  (define-fun var11 () Bool
    false)
  (define-fun var13 () Bool
    false)
  (define-fun var14 () Bool
    false)
  (define-fun var10 () Bool
    false)
  (define-fun var9 () Int
    0)
)
'''


import re

def extract(model):
    s = ""
    for l in model:
        s+=l.rstrip("\n")

    return s[len("(model"):-1]

print (extract(text))


# /tmp/tmpufxspreh/out.smt /home/mku/wordbenchmarks/models/kauslersuite/kausler/mathParser2.smt2

