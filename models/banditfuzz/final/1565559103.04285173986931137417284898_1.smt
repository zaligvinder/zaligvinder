;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.10030508041381836, 'smt_solvers/QF_S/cvc4/': 0.18596386909484863, 'smt_solvers/QF_S/z3str3/': 0.10033750534057617, 'smt_solvers/QF_S/z3seq/': 0.09487223625183105}
;  score   = 0.08562636375427246
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (> var8 var9))(assert (< (str.indexof "I0fgF0gQC4" var3 var11) (str.indexof var4 var0 var7)))(assert (not (< var8 var6)))(assert (not (str.suffixof var3 var3)))(assert (not var17))(check-sat)