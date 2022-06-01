;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.22240471839904785, 'smt_solvers/QF_S/z3str3fed/': 0.07558560371398926, 'smt_solvers/QF_S/z3seq/': 0.09090161323547363, 'smt_solvers/QF_S/z3str3/': 0.09614324569702148}
;  score   = 0.12626147270202637
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (>= (str.indexof var4 var3 var5) (str.len var2)))(assert (> var8 var9))(assert (<= var9 var8))(assert (str.suffixof (str.replace (str.substr var2 9 var8) (str.substr var0 var6 var7) (str.substr var2 var7 var7)) (str.replace (str.replace var2 var1 var1) (str.substr var2 var9 var7) (str.at var2 var8))))(assert (< (str.len (str.substr var0 var5 var9)) (str.indexof (str.at var3 var9) (str.at var4 var7) (str.indexof var2 var1 2))))(check-sat)