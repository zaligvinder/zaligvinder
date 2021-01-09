;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.06892132759094238, 'smt_solvers/QF_S/cvc4/': 0.14079833030700684, 'smt_solvers/QF_S/z3seq/': 0.08331751823425293, 'smt_solvers/QF_S/z3str3/': 0.09038400650024414}
;  score   = 0.050414323806762695
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.suffixof (str.at "Md<+C-RVAi" var11) (str.substr "OV[Y7*TH/j" var8 var6)))(assert (>= (str.indexof var3 var0 var8) (str.indexof (str.replace var1 "C3Q<1cAm[k" var2) (str.substr var4 var6 var11) (str.indexof "E+6CE^j|\\D" var0 var6))))(assert (>= (str.indexof (str.substr var0 var8 var8) (str.at var3 var11) (str.len var2)) (str.len var2)))(assert (not (not false)))(assert (str.suffixof var3 var5))(check-sat)