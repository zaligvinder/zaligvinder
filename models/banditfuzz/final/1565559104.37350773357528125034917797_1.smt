;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.10087704658508301, 'smt_solvers/QF_S/cvc4/': 0.2728250026702881, 'smt_solvers/QF_S/z3str3/': 0.11159253120422363, 'smt_solvers/QF_S/z3str3fed/': 0.08185696601867676}
;  score   = 0.16123247146606445
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (not (str.prefixof var0 var3)))(assert (str.contains var2 var5))(assert (str.in_re var4 re.allchar))(assert (str.suffixof (str.replace var0 var4 var4) (str.replace var3 var2 var0)))(assert (< (str.len var0) (str.indexof (str.at var2 var10) (str.replace "8s:2(pJvDb" var0 var1) (str.indexof var5 "961iXxywG'" var6))))(check-sat)