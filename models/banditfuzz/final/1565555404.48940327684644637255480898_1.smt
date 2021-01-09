;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.21600008010864258, 'smt_solvers/QF_S/z3seq/': 0.10473084449768066, 'smt_solvers/QF_S/z3str3fed/': 0.09084773063659668, 'smt_solvers/QF_S/z3str3/': 0.11516857147216797}
;  score   = 0.10083150863647461
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.suffixof "._3b}jcNkk" var2))(assert (str.prefixof (str.replace (str.replace var2 var2 var2) (str.substr var2 var7 var9) (str.substr var2 var5 var5)) (str.substr var3 var5 var6)))(assert (<= (str.len var3) (str.indexof var4 var2 var7)))(assert (> (str.indexof var4 var1 10) (str.len var3)))(assert (str.prefixof (str.replace var1 var1 var4) (str.substr var3 2 var5)))(check-sat)