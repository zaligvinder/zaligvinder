;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.09644770622253418, 'smt_solvers/QF_S/z3seq/': 0.11685729026794434, 'smt_solvers/QF_S/cvc4/': 0.18907952308654785, 'smt_solvers/QF_S/z3str3/': 0.13417673110961914}
;  score   = 0.05490279197692871
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.in_re (str.at var2 var8) (re.* re.allchar)))(assert (str.contains (str.replace (str.replace var4 var4 var3) (str.substr var3 var9 var9) (str.substr var0 var6 var8)) (str.at (str.at var2 var5) (str.len var0))))(assert (str.prefixof (str.at var0 5) (str.substr (str.replace var4 var1 var1) (str.len var4) (str.indexof var0 var4 var7))))(assert (str.prefixof (str.substr var3 var6 var7) (str.replace var3 var1 var1)))(assert (< (str.len var2) (str.indexof var1 var1 var9)))(check-sat)