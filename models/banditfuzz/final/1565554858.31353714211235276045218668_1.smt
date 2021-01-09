;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.20418095588684082, 'smt_solvers/QF_S/z3seq/': 0.20960474014282227, 'smt_solvers/QF_S/z3str3/': 0.18920660018920898, 'smt_solvers/QF_S/z3str3fed/': 0.12082982063293457}
;  score   = -0.005423784255981445
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (> var5 var5))(assert (<= var6 var9))(assert (> 3 var5))(assert (not var12))(assert (str.suffixof var0 var2))(check-sat)