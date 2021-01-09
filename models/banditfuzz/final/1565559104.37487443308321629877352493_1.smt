;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.336958646774292, 'smt_solvers/QF_S/z3str3fed/': 0.3009378910064697, 'smt_solvers/QF_S/z3str3/': 0.2619748115539551, 'smt_solvers/QF_S/cvc4/': 16.85102152824402}
;  score   = 16.514062881469727
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/z3str3/': 'sat', 'smt_solvers/QF_S/cvc4/': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (<= (str.indexof var0 var2 var7) (str.len var5)))(assert (>= (str.indexof var0 var3 var6) (str.indexof var5 var0 var11)))(assert (str.prefixof (str.substr var4 var10 var9) (str.substr var4 var10 var9)))(assert (str.prefixof (str.replace (str.replace var3 var3 var3) (str.at var4 var11) (str.at "UQIWQ9|?p\\" 0)) (str.replace "J]uKkP'K7/" var4 var5)))(assert (str.in.re var3 re.allchar))(check-sat)