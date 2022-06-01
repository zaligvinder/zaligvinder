;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.5891013145446777, 'smt_solvers/QF_S/z3str3/': 0.12154603004455566, 'smt_solvers/QF_S/z3seq/': 0.11021280288696289, 'smt_solvers/QF_S/z3str3fed/': 0.09190130233764648}
;  score   = 0.46755528450012207
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (>= var9 var6))(assert (> (str.indexof (str.substr var4 var6 var9) (str.replace var1 var4 var3) (str.indexof var1 var1 var7)) (str.len var2)))(assert (str.prefixof (str.replace var4 var3 var4) (str.substr var0 var8 var7)))(assert (> (str.indexof var2 var4 1) (str.indexof "a/(=~w`m6?" var1 var9)))(assert (str.contains var3 var4))(check-sat)