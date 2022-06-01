;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.17748594284057617, 'smt_solvers/QF_S/z3str3fed/': 0.07073664665222168, 'smt_solvers/QF_S/z3str3/': 0.09915685653686523, 'smt_solvers/QF_S/z3seq/': 0.08816647529602051}
;  score   = 0.07832908630371094
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.contains (str.substr (str.substr "5BD""E<T)^s" var9 var8) (str.len var0) (str.len var0)) (str.substr var2 var9 10)))(assert (not true))(assert (<= (str.len var0) (str.indexof var1 var2 var10)))(assert (<= (str.len var3) (str.len var0)))(assert (str.prefixof (str.substr var0 var9 var10) (str.substr var2 var9 var7)))(check-sat)