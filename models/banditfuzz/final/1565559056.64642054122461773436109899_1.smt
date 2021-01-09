;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 2500, 'smt_solvers/QF_S/z3str3fed/': 0.07325029373168945, 'smt_solvers/QF_S/z3str3/': 0.0839078426361084, 'smt_solvers/QF_S/z3seq/': 0.08170604705810547}
;  score   = 7499.916092157364
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'timeout', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (not (< var8 var11)))(assert (> (str.indexof (str.at var5 (str.indexof var3 var5 var9)) (str.at var5 (str.indexof var3 var5 var9)) (str.len var4)) (str.to.int var3)))(assert (not (str.contains var3 var5)))(assert (str.contains var0 var5))(assert (str.suffixof (str.replace var5 var5 var5) (str.at var4 var11)))(check-sat)