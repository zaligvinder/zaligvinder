;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.10123753547668457, 'smt_solvers/QF_S/z3seq/': 0.09733724594116211, 'smt_solvers/QF_S/cvc4/': 2500, 'smt_solvers/QF_S/z3str3fed/': 0.07963395118713379}
;  score   = 7499.898762464523
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'timeout', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (not (str.suffixof (str.substr var0 var9 var5) (str.replace var2 var0 var3))))(assert (<= (str.len var3) (str.indexof var2 var4 var6)))(assert (str.suffixof var0 var4))(assert (not (str.contains var2 var4)))(assert (> (str.len var0) (str.indexof var4 var2 var9)))(check-sat)