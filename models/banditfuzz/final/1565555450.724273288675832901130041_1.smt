;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.12191319465637207, 'smt_solvers/QF_S/z3seq/': 0.08481740951538086, 'smt_solvers/QF_S/cvc4/': 0.23218464851379395, 'smt_solvers/QF_S/z3str3fed/': 0.06878447532653809}
;  score   = 0.11027145385742188
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.contains (str.substr var0 7 var7) (str.replace var0 "_A>q(E?7S9" var0)))(assert (str.contains var4 var3))(assert (> (str.len var0) (str.len var4)))(assert (str.contains (str.substr (str.substr var0 var8 var5) (str.indexof "tABh^Tsywy" var2 7) (str.len var2)) (str.at var3 var8)))(assert (not var14))(check-sat)