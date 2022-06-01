;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.23454713821411133, 'smt_solvers/QF_S/z3str3fed/': 0.18155908584594727, 'smt_solvers/QF_S/z3seq/': 0.4710659980773926, 'smt_solvers/QF_S/cvc4/': 11.554354667663574}
;  score   = 11.083288669586182
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'sat', 'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/cvc4/': 'sat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (> (str.len var1) (str.indexof (str.at var2 var8) (str.replace var5 "h6U,.+KAX:" var1) (str.len var5))))(assert (>= (str.indexof var3 var0 4) (str.indexof var3 var1 var8)))(assert (<= var10 var10))(assert (str.contains (str.substr var2 var10 var10) (str.at var2 var9)))(assert (<= var11 var7))(assert (str.contains "wq0u>8',\\K" var5))(assert (str.prefixof (str.replace var4 var5 var1) (str.at var4 var10)))(check-sat)