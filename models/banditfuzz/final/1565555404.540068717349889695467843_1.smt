;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.1359238624572754, 'smt_solvers/QF_S/cvc4/': 0.3259701728820801, 'smt_solvers/QF_S/z3str3fed/': 0.09311199188232422, 'smt_solvers/QF_S/z3seq/': 0.11014246940612793}
;  score   = 0.1900463104248047
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.suffixof (str.replace var3 var0 "':9O4PQ>'B") (str.replace var1 var4 var4)))(assert (<= (str.len "=zl7)\\'6Y.") (str.indexof (str.substr var3 var7 var6) (str.at var4 var6) (str.len var3))))(assert (>= var7 var5))(assert (str.suffixof var3 var2))(assert (> (str.indexof var4 var0 var6) (str.len (str.replace var2 var3 var4))))(check-sat)