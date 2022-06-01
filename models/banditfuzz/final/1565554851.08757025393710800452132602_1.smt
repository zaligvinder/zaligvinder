;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.0600433349609375, 'smt_solvers/QF_S/z3seq/': 0.08153438568115234, 'smt_solvers/QF_S/cvc4/': 0.05952906608581543, 'smt_solvers/QF_S/z3str3/': 0.07598495483398438}
;  score   = -0.022005319595336914
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.prefixof (str.replace (str.replace var3 var2 var2) (str.at var0 var6) (str.at var4 var8)) (str.substr (str.at var1 var8) (str.indexof var4 var3 var8) (str.indexof var1 var3 var6))))(assert (> var8 var9))(assert (< var6 var6))(assert (str.contains (str.substr var0 var6 var7) (str.at var3 var7)))(assert (> (str.len var0) (str.indexof var2 var4 var6)))(check-sat)