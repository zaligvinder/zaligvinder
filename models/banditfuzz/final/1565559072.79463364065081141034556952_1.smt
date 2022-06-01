;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.11859631538391113, 'smt_solvers/QF_S/z3str3fed/': 0.09172582626342773, 'smt_solvers/QF_S/cvc4/': 0.17261433601379395, 'smt_solvers/QF_S/z3seq/': 0.11725187301635742}
;  score   = 0.05401802062988281
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (< var6 var9))(assert (>= var6 var9))(assert (not var14))(assert (str.prefixof (str.substr (str.at var4 var9) (str.indexof var2 var4 var7) (str.indexof var0 var4 var9)) (str.substr var4 var11 var10)))(assert (not (not var13)))(check-sat)