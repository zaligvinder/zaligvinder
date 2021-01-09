;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.27908754348754883, 'smt_solvers/QF_S/z3str3/': 0.09909176826477051, 'smt_solvers/QF_S/z3seq/': 0.10293459892272949, 'smt_solvers/QF_S/z3str3fed/': 0.09639406204223633}
;  score   = 0.17615294456481934
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (> (str.len (str.replace var2 var0 var3)) (str.len (str.substr var2 var9 var8))))(assert (< 7 var9))(assert (< (str.len (str.replace var1 var4 var2)) (str.indexof (str.at var3 var7) (str.substr var3 var6 var6) (str.len var4))))(assert (> (str.len var1) (str.len (str.replace var4 var1 var0))))(assert (<= (str.indexof (str.substr var2 var9 var7) (str.substr var2 var6 var9) (str.len var0)) (str.indexof (str.substr var0 var8 var8) (str.at var0 var6) (str.len var4))))(check-sat)