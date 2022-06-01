;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.0840766429901123, 'smt_solvers/QF_S/z3str3fed/': 0.06841468811035156, 'smt_solvers/QF_S/cvc4/': 0.06527948379516602, 'smt_solvers/QF_S/z3str3/': 0.0849006175994873}
;  score   = -0.01962113380432129
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (<= (str.indexof var0 var2 0) (str.indexof var3 var1 var8)))(assert (str.prefixof var2 var1))(assert (str.contains (str.replace "emS$n98.P%" var4 var4) (str.at (str.replace var1 var0 var1) (str.len var0))))(assert (str.contains var3 var2))(assert (> var9 var9))(check-sat)