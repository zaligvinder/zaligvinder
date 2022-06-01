;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.2529330253601074, 'smt_solvers/QF_S/z3str3fed/': 0.07953310012817383, 'smt_solvers/QF_S/z3str3/': 0.10970830917358398, 'smt_solvers/QF_S/z3seq/': 0.10035324096679688}
;  score   = 0.14322471618652344
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (>= (str.indexof (str.substr var0 var6 var7) (str.at var4 var6) (str.indexof var4 var1 var7)) (str.indexof (str.replace var4 var1 var1) (str.replace var2 var0 var3) (str.len var4))))(assert (<= var8 var8))(assert (< (str.len "|%bP]qGA4B") (str.indexof (str.substr var1 var7 var7) (str.substr var1 var6 var9) (str.len var0))))(assert (>= (str.indexof var1 var3 0) (str.indexof var3 var0 var8)))(assert (< var7 1))(check-sat)