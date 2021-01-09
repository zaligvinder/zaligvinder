;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.0713648796081543, 'smt_solvers/QF_S/z3str3/': 0.09598994255065918, 'smt_solvers/QF_S/z3seq/': 0.08717751502990723, 'smt_solvers/QF_S/cvc4/': 0.17401456832885742}
;  score   = 0.07802462577819824
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (<= (str.indexof var5 var5 var6) (str.indexof var3 var2 var8)))(assert (>= (str.len var3) (str.len var5)))(assert (> var11 var11))(assert (not (str.prefixof (str.++ var1 var1) (str.substr var2 var7 3))))(assert (str.suffixof (str.replace var2 var5 var0) (str.at (str.substr var2 var9 var11) (str.len var4))))(check-sat)