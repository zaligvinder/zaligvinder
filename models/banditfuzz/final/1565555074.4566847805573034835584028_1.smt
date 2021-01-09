;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.06153464317321777, 'smt_solvers/QF_S/z3seq/': 0.08446097373962402, 'smt_solvers/QF_S/z3str3fed/': 0.06688356399536133, 'smt_solvers/QF_S/z3str3/': 0.08265042304992676}
;  score   = -0.02292633056640625
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (< var5 var7))(assert (str.suffixof var1 var3))(assert (str.suffixof (str.at (str.substr var1 var8 var7) (str.indexof var3 var0 var7)) (str.replace var4 var2 var1)))(assert (>= var5 var7))(assert (str.contains (str.replace var0 var1 var4) (str.substr var1 var6 var7)))(check-sat)