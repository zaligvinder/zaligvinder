;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.10292506217956543, 'smt_solvers/QF_S/cvc4/': 0.09426116943359375, 'smt_solvers/QF_S/z3seq/': 0.08283257484436035, 'smt_solvers/QF_S/z3str3fed/': 0.07274007797241211}
;  score   = -0.00866389274597168
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (< (str.len """N?6xz'Il,") (str.len var1)))(assert (str.contains (str.replace (str.substr var2 var5 var8) (str.replace var2 var3 var3) (str.at var0 5)) (str.at (str.replace var0 var2 var4) (str.len var0))))(assert (str.contains (str.replace var3 "%;}qkRzX""Q" var1) (str.substr var4 var5 var5)))(assert (str.suffixof (str.replace var1 var2 var1) (str.substr var3 var8 10)))(assert (> (str.len "]2R++%g{\\$") (str.len var2)))(check-sat)