;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.11069464683532715, 'smt_solvers/QF_S/z3seq/': 0.10322737693786621, 'smt_solvers/QF_S/z3str3fed/': 0.09051203727722168, 'smt_solvers/QF_S/cvc4/': 0.34951162338256836}
;  score   = 0.2388169765472412
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.prefixof var2 "!tv##pPXU."))(assert (str.contains (str.at var2 var6) (str.at var2 var7)))(assert (str.contains (str.at (str.at var2 var8) (str.len var1)) (str.at "$kmF>8M>;F" var8)))(assert (> (str.indexof (str.replace var2 var4 var2) (str.at var2 var7) (str.indexof var2 "\\h6!8Uj&IK" 7)) (str.indexof var0 var1 3)))(assert (>= 5 var8))(check-sat)