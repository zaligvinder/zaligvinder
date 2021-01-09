;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.09543013572692871, 'smt_solvers/QF_S/z3str3fed/': 0.0717155933380127, 'smt_solvers/QF_S/z3str3/': 0.09902477264404297, 'smt_solvers/QF_S/cvc4/': 0.1880018711090088}
;  score   = 0.08897709846496582
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (> (str.indexof (str.replace var4 var2 var1) (str.substr var1 var5 var5) (str.indexof var4 var2 1)) (str.len var3)))(assert (< (str.len var1) (str.indexof (str.at var1 var7) (str.substr var4 var7 var6) (str.indexof var1 var4 var8))))(assert (str.contains var2 var1))(assert (str.suffixof var3 var1))(assert (>= (str.indexof var0 "@s_I)Tj#_9" var9) (str.len var0)))(check-sat)