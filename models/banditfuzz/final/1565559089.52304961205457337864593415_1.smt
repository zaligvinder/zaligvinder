;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.06679296493530273, 'smt_solvers/QF_S/cvc4/': 0.15115761756896973, 'smt_solvers/QF_S/z3str3/': 0.09124493598937988, 'smt_solvers/QF_S/z3seq/': 0.08355522155761719}
;  score   = 0.059912681579589844
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (<= (str.len var5) (str.len var4)))(assert (<= 5 3))(assert (str.suffixof (str.at var4 3) (str.at var2 var11)))(assert (not (str.in.re var0 re.allchar)))(assert (> var9 var7))(check-sat)