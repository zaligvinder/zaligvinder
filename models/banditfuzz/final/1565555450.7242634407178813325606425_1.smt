;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.1504206657409668, 'smt_solvers/QF_S/cvc4/': 2500, 'smt_solvers/QF_S/z3str3fed/': 0.19515752792358398, 'smt_solvers/QF_S/z3seq/': 0.0986931324005127}
;  score   = 7499.804842472076
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'timeout', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (< var9 var5))(assert (> (str.indexof (str.substr var1 var6 var5) (str.replace var0 "ILHl4)LcYk" var2) (str.indexof "(0;?e_xzC_" var1 var7)) (str.len (str.replace var1 var2 var1))))(assert (> (str.len var0) (str.indexof var4 var2 8)))(assert (str.suffixof var1 var0))(assert (>= (str.indexof var1 var2 var5) (str.len var2)))(check-sat)