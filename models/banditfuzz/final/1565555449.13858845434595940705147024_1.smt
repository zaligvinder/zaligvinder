;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.12128639221191406, 'smt_solvers/QF_S/z3seq/': 0.13494634628295898, 'smt_solvers/QF_S/cvc4/': 0.7718958854675293, 'smt_solvers/QF_S/z3str3fed/': 0.10481977462768555}
;  score   = 0.6369495391845703
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.prefixof (str.replace var1 var0 var0) (str.replace (str.replace var4 var2 var4) (str.replace var1 var0 var2) (str.substr var2 5 var6))))(assert (> var5 var9))(assert (< (str.len var4) (str.indexof (str.substr var1 var5 var6) (str.substr var4 2 var6) (str.indexof var1 var4 var7))))(assert (not (str.contains var1 var3)))(assert (>= var7 var6))(check-sat)