;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.08650517463684082, 'smt_solvers/QF_S/cvc4/': 0.17096233367919922, 'smt_solvers/QF_S/z3str3fed/': 0.07950210571289062, 'smt_solvers/QF_S/z3str3/': 0.09331178665161133}
;  score   = 0.07765054702758789
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.prefixof var1 var2))(assert (> (str.len var0) (str.len var0)))(assert (not var14))(assert (> var11 var10))(assert (< (str.indexof ":GFl#s!{8," ":GFl#s!{8," (str.indexof var2 var5 var8)) (str.indexof var5 var0 var10)))(check-sat)