;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.12146139144897461, 'smt_solvers/QF_S/cvc4/': 0.23956584930419922, 'smt_solvers/QF_S/z3str3fed/': 0.09593534469604492, 'smt_solvers/QF_S/z3seq/': 0.11700224876403809}
;  score   = 0.11810445785522461
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (>= (str.indexof (str.substr var3 var9 var5) (str.at var0 6) (str.indexof var0 var2 1)) (str.indexof (str.replace var3 var4 "`0n&%E]^Qb") (str.substr var4 var6 var9) (str.len var3))))(assert (< (str.indexof var4 var2 var6) (str.len var1)))(assert (<= (str.len var3) (str.indexof var3 var3 var9)))(assert (< (str.indexof var3 var4 var7) (str.indexof (str.substr var3 var6 var5) (str.at var4 var9) (str.len var3))))(assert (< var5 var7))(check-sat)