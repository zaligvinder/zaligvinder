;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.056387901306152344, 'smt_solvers/QF_S/z3seq/': 0.07422900199890137, 'smt_solvers/QF_S/z3str3/': 0.07566523551940918, 'smt_solvers/QF_S/cvc4/': 0.15313076972961426}
;  score   = 0.07746553421020508
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (> (str.indexof var2 var2 (str.len (str.replace var0 var1 var4))) (str.indexof var2 var2 (str.len (str.replace var0 var1 var4)))))(assert (str.contains var4 var2))(assert (str.suffixof (str.substr var4 var6 var8) (str.replace var3 var3 var4)))(assert (str.prefixof (str.substr var3 var6 var6) (str.at (str.at var2 var7) (str.len var4))))(assert (<= var8 var8))(check-sat)