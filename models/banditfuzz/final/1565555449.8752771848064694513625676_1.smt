;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.07759857177734375, 'smt_solvers/QF_S/z3str3/': 0.11559510231018066, 'smt_solvers/QF_S/z3seq/': 0.09647750854492188, 'smt_solvers/QF_S/cvc4/': 0.33266663551330566}
;  score   = 0.217071533203125
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.contains (str.substr var0 var8 var7) (str.at var4 var8)))(assert (str.contains (str.at var0 var8) (str.replace var1 "XjsAwE6I(K" var1)))(assert (< (str.len (str.replace var0 var3 var4)) (str.indexof var1 var4 var8)))(assert (< (str.indexof var4 var2 var5) (str.indexof var4 var3 var5)))(assert (<= var6 var8))(check-sat)