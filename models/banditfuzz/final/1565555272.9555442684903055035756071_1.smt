;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.07510995864868164, 'smt_solvers/QF_S/z3str3/': 0.08239197731018066, 'smt_solvers/QF_S/cvc4/': 0.15760207176208496, 'smt_solvers/QF_S/z3str3fed/': 0.059206247329711914}
;  score   = 0.0752100944519043
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (> (str.indexof ")w\\8""@O{!," var1 var7) (str.indexof var0 var2 var6)))(assert (< var6 var6))(assert (> var9 var6))(assert (str.prefixof (str.at "5YP/UWmYt<" var6) (str.substr var4 var5 var7)))(assert (not (> (str.len var0) (str.len var1))))(check-sat)