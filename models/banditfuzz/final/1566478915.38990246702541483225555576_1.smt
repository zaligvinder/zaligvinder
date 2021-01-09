;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.11362743377685547, 'smt_solvers/QF_S/z3str3fed/': 0.09488558769226074, 'smt_solvers/QF_S/z3seq/': 0.1235647201538086, 'smt_solvers/QF_S/cvc4/': 0.15900921821594238}
;  score   = 0.03544449806213379
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.prefixof (str.replace var3 var5 var0) (str.at var5 var11)))(assert (<= (str.len var0) (str.len var1)))(assert (< var8 var6))(assert (>= (str.indexof var2 var5 var10) (str.indexof var2 var1 var11)))(assert (str.prefixof var3 var3))(assert (<= var9 var6))(assert (not (>= var6 var6)))(check-sat)