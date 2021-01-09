;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.12276577949523926, 'smt_solvers/QF_S/cvc4/': 0.1594686508178711, 'smt_solvers/QF_S/z3seq/': 0.10978484153747559, 'smt_solvers/QF_S/z3str3fed/': 0.09644627571105957}
;  score   = 0.036702871322631836
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (not (str.contains var4 var3)))(assert (> (str.len var4) (str.indexof (str.at var0 var6) (str.replace var2 var0 var1) (str.len var1))))(assert (<= (str.len var2) (str.indexof var1 var1 var6)))(assert (not (< 10 var9)))(assert (> (str.indexof (str.substr var3 var5 var5) (str.at var0 var5) (str.len var3)) (str.indexof var0 var4 var5)))(check-sat)