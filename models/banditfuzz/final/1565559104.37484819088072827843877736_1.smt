;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.10447049140930176, 'smt_solvers/QF_S/z3seq/': 0.11079216003417969, 'smt_solvers/QF_S/cvc4/': 0.23548483848571777, 'smt_solvers/QF_S/z3str3fed/': 0.0831298828125}
;  score   = 0.12469267845153809
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.suffixof (str.replace var4 var1 var3) (str.replace var4 var1 var3)))(assert (not (str.suffixof var3 var5)))(assert (> 3 var7))(assert (str.suffixof (str.replace "Gq$}!k=(#d" var1 "=*unWT@s+o") (str.at var5 var11)))(assert (str.prefixof (str.at "J<96.j[l-_" var10) (str.at var1 var11)))(check-sat)