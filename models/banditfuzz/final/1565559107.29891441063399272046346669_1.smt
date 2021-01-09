;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.5296509265899658, 'smt_solvers/QF_S/z3str3fed/': 0.10521483421325684, 'smt_solvers/QF_S/z3seq/': 0.10689449310302734, 'smt_solvers/QF_S/z3str3/': 0.15028071403503418}
;  score   = 0.37937021255493164
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.contains (str.replace var2 var3 var5) (str.substr var5 var6 var7)))(assert (str.prefixof (str.substr var3 var6 var11) (str.at (str.at var3 var11) (str.len var0))))(assert (str.contains (str.at (str.at var4 6) (str.len var3)) (str.replace "_N%DE%31Co" var4 var2)))(assert (str.contains (str.substr var1 var8 1) (str.replace var3 var1 var2)))(assert (<= (str.len "^j@QY%%S6.") (str.indexof var2 var4 var6)))(check-sat)