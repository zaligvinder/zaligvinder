;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.07822871208190918, 'smt_solvers/QF_S/z3seq/': 0.09404921531677246, 'smt_solvers/QF_S/z3str3/': 0.11279654502868652, 'smt_solvers/QF_S/cvc4/': 0.45210862159729004}
;  score   = 0.3393120765686035
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (< (str.indexof var2 var0 var9) (str.indexof (str.at var0 var7) (str.replace var0 var0 var1) (str.to.int var1))))(assert (str.contains var5 var3))(assert (str.contains (str.substr var2 var10 var8) (str.replace var1 var2 "aPJz)1ZF^3")))(assert (>= var6 var8))(assert (< (str.len (str.replace var3 var2 var3)) (str.indexof var3 var0 var8)))(check-sat)