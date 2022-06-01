;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.07198381423950195, 'smt_solvers/QF_S/cvc4/': 0.2528724670410156, 'smt_solvers/QF_S/z3seq/': 0.08981060981750488, 'smt_solvers/QF_S/z3str3/': 0.0878143310546875}
;  score   = 0.16306185722351074
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (not (str.contains var5 var5)))(assert (< 9 var9))(assert (not (<= (str.indexof var4 var5 var9) (str.len var1))))(assert (>= var9 var7))(assert (not (> var9 var7)))(check-sat)