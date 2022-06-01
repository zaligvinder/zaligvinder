;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.10045123100280762, 'smt_solvers/QF_S/z3str3fed/': 0.06686806678771973, 'smt_solvers/QF_S/cvc4/': 0.09675145149230957, 'smt_solvers/QF_S/z3seq/': 0.081024169921875}
;  score   = -0.003699779510498047
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.contains var4 var4))(assert (str.contains (str.at var4 var9) (str.replace var2 var3 var1)))(assert (<= (str.len var4) (str.indexof var0 var3 var7)))(assert (>= (str.indexof "z1`ayux\\{>" var2 var9) (str.len var1)))(assert (> (str.indexof var3 var3 var7) (str.len var3)))(check-sat)