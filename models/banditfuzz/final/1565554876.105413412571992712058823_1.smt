;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.07020831108093262, 'smt_solvers/QF_S/cvc4/': 0.07056331634521484, 'smt_solvers/QF_S/z3seq/': 0.08597731590270996, 'smt_solvers/QF_S/z3str3/': 0.08533692359924316}
;  score   = -0.015413999557495117
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (< var5 var5))(assert (< var8 4))(assert (str.contains var3 var1))(assert (str.contains var3 var3))(assert (> (str.indexof (str.at var1 var9) (str.at var3 (str.len (str.at var0 var8))) (str.len var4)) (str.indexof var0 var4 var8)))(check-sat)