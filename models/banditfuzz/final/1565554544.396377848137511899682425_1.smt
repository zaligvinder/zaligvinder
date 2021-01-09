;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 1.0827937126159668, 'smt_solvers/QF_S/z3seq/': 0.5197787284851074, 'smt_solvers/QF_S/z3str3fed/': 1.1025493144989014, 'smt_solvers/QF_S/z3str3/': 0.10865187644958496}
;  score   = -0.01975560188293457
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.contains var1 var2))(assert (str.contains var4 var1))(assert (>= (str.indexof var2 var4 var8) (str.len (str.replace var3 var1 var4))))(assert (<= (str.len var0) (str.indexof (str.replace var2 var0 var1) (str.substr var3 var6 0) (str.len var0))))(assert (> (str.indexof (str.replace var3 var2 "O[[V=WO'TZ") (str.substr "~_V{6X23wS" var9 var9) (str.len var0)) (str.len (str.substr var0 var9 var8))))(check-sat)