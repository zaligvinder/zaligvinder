;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.07487821578979492, 'smt_solvers/QF_S/z3str3/': 0.07490205764770508, 'smt_solvers/QF_S/cvc4/': 0.14231586456298828, 'smt_solvers/QF_S/z3str3fed/': 0.06088542938232422}
;  score   = 0.0674138069152832
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (not (str.contains var1 var3)))(assert (>= var8 var7))(assert (str.contains "kZgDUW6{2m" var4))(assert (str.contains var3 var0))(assert (not (str.prefixof var4 var4)))(check-sat)