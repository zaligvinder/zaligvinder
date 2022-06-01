;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 2500, 'smt_solvers/QF_S/z3str3/': 29.068698167800903, 'smt_solvers/QF_S/z3str3fed/': 0.26527905464172363, 'smt_solvers/QF_S/z3seq/': 0.8040969371795654}
;  score   = 7470.931301832199
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'timeout', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/z3seq/': 'sat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (> var9 var10))(assert (>= var8 var11))(assert (> (str.indexof (str.++ var3 var3) (str.replace var0 var1 var5) (str.indexof var1 var5 var11)) (str.len "%+`0KB50AG")))(assert (>= (str.len var2) (str.len var2)))(assert (> var11 var9))(check-sat)