;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.10873222351074219, 'smt_solvers/QF_S/z3seq/': 0.09255719184875488, 'smt_solvers/QF_S/cvc4/': 0.5564794540405273, 'smt_solvers/QF_S/z3str3fed/': 0.07874822616577148}
;  score   = 0.44774723052978516
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (<= (str.indexof var4 var3 var8) (str.indexof (str.substr var3 var7 var7) (str.at var3 var5) (str.indexof var1 var4 var9))))(assert (str.contains (str.replace var2 var3 var0) (str.replace var0 var2 var1)))(assert (< (str.len var2) (str.indexof (str.replace var2 var1 var0) (str.at "'B9ElA-j4Z" var7) (str.len var0))))(assert (> var9 1))(assert (<= (str.len var3) (str.indexof var1 var2 var7)))(check-sat)