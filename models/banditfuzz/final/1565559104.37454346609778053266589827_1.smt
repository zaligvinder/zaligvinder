;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.08754134178161621, 'smt_solvers/QF_S/z3str3/': 0.09785819053649902, 'smt_solvers/QF_S/z3str3fed/': 0.07221055030822754, 'smt_solvers/QF_S/cvc4/': 0.18509411811828613}
;  score   = 0.08723592758178711
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (<= var11 10))(assert (not (str.in_re var2 (re.++ (re.* re.allchar) (re.* re.allchar)))))(assert (str.prefixof var1 var2))(assert (str.contains var5 var3))(assert (>= (str.len var5) (str.len var5)))(check-sat)