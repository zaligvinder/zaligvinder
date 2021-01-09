;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.1598191261291504, 'smt_solvers/QF_S/z3str3/': 0.10349583625793457, 'smt_solvers/QF_S/z3str3fed/': 0.11656999588012695, 'smt_solvers/QF_S/cvc4/': 0.2500145435333252}
;  score   = 0.0901954174041748
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/cvc4/': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.in.re (str.substr var1 7 var6) (re.* re.allchar)))(assert (str.in.re (str.at var4 var8) (re.+ re.allchar)))(assert (> (str.indexof (str.replace var2 var4 var4) (str.replace var3 var0 var4) (str.len var2)) (str.indexof var3 var4 var8)))(assert (<= var7 3))(assert (str.contains (str.at (str.at var4 var9) (str.len var2)) (str.replace (str.replace var1 var2 var0) (str.at var2 9) (str.substr var0 var7 var7))))(check-sat)