;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.2277207374572754, 'smt_solvers/QF_S/z3str3fed/': 0.0737159252166748, 'smt_solvers/QF_S/z3seq/': 0.09225869178771973, 'smt_solvers/QF_S/z3str3/': 0.10625290870666504}
;  score   = 0.12146782875061035
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (< var8 var10))(assert (str.suffixof (str.at (str.replace var2 var5 var3) (str.indexof var0 var2 var6)) (str.replace var0 var2 "`IFT:LSv$H")))(assert (str.in_re var5 re.allchar))(assert (not (>= (str.len var3) (str.indexof var3 "r5WiMvNi4~" var9))))(assert (> (str.indexof var0 var0 (str.indexof (str.++ var5 var5) (str.at var5 var9) (str.indexof var3 var2 var8))) (str.len var4)))(check-sat)