;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.06280732154846191, 'smt_solvers/QF_S/z3seq/': 0.0773160457611084, 'smt_solvers/QF_S/cvc4/': 0.06172037124633789, 'smt_solvers/QF_S/z3str3/': 0.07885313034057617}
;  score   = -0.01713275909423828
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (< (str.indexof (str.substr var3 var6 var6) (str.substr var4 var7 var6) (str.indexof var0 var1 var7)) (str.indexof var4 var0 var8)))(assert (str.in.re (str.at var0 var7) (re.inter re.allchar re.allchar)))(assert (str.contains (str.at (str.at var4 var8) (str.indexof var1 var4 var7)) (str.substr var3 var8 var6)))(assert (str.in.re "?@b/d/!Vhl" re.allchar))(assert (< var9 var7))(check-sat)