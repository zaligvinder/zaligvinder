;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.190565824508667, 'smt_solvers/QF_S/z3str3/': 0.0928792953491211, 'smt_solvers/QF_S/z3seq/': 0.08814597129821777, 'smt_solvers/QF_S/z3str3fed/': 0.06906819343566895}
;  score   = 0.0976865291595459
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (>= var7 var6))(assert (str.contains (str.substr var3 var9 var7) (str.at (str.replace "#PGMz@O|U*" var1 var4) (str.indexof var4 var4 var7))))(assert (<= (str.len var1) (str.indexof (str.at var1 var5) (str.at "N'T4Vx5m()" 4) (str.indexof var2 var2 (str.indexof (str.substr var2 var6 var7) (str.at var1 var7) (str.len var3))))))(assert (>= var8 var6))(assert (str.prefixof (str.++ var0 var3) (str.++ var0 var3)))(check-sat)