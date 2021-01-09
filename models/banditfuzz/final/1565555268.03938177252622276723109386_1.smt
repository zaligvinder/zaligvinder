;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.09992527961730957, 'smt_solvers/QF_S/cvc4/': 0.19858431816101074, 'smt_solvers/QF_S/z3seq/': 0.09125471115112305, 'smt_solvers/QF_S/z3str3fed/': 0.07517337799072266}
;  score   = 0.09865903854370117
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (<= var5 var6))(assert (str.in.re (str.replace (str.replace var1 var4 "U6Tq%OOAl\\") (str.replace var0 var2 var1) (str.replace var3 var3 var3)) (re.+ re.allchar)))(assert (> (str.len var2) (str.len (str.at var0 var9))))(assert (< (str.len (str.substr var1 var8 var5)) (str.indexof (str.at var0 var6) (str.at var2 var6) (str.len ":(NQj3`F#L"))))(assert (>= (str.len (str.at var1 var8)) (str.len var0)))(check-sat)