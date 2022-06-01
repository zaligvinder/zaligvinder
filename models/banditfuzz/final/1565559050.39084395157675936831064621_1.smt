;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.08523297309875488, 'smt_solvers/QF_S/z3str3fed/': 0.0652170181274414, 'smt_solvers/QF_S/cvc4/': 0.1869504451751709, 'smt_solvers/QF_S/z3str3/': 0.10941791534423828}
;  score   = 0.07753252983093262
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (> var6 var9))(assert (< (str.len (str.replace var1 var1 var1)) (str.len var2)))(assert (> (str.len var3) (str.indexof var5 var1 var11)))(assert (> (str.len var3) (str.len var5)))(assert (str.contains (str.replace var5 var3 var2) (str.replace var3 var0 var0)))(check-sat)