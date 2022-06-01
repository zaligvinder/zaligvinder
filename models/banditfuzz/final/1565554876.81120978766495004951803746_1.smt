;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.08243656158447266, 'smt_solvers/QF_S/cvc4/': 0.0616912841796875, 'smt_solvers/QF_S/z3str3fed/': 0.0659019947052002, 'smt_solvers/QF_S/z3seq/': 0.08153128623962402}
;  score   = -0.020745277404785156
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (<= var8 var9))(assert (> (str.len (str.replace var0 var2 "g*Gl0&*u@?")) (str.indexof (str.substr var1 var7 var9) (str.replace var2 var2 var2) (str.len var4))))(assert (< var8 var7))(assert (> (str.len var0) (str.to_int var3)))(assert (str.in_re "q8H$]@mY_5" re.allchar))(check-sat)