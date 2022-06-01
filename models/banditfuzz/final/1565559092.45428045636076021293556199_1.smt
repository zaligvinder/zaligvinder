;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.10020232200622559, 'smt_solvers/QF_S/cvc4/': 0.25145411491394043, 'smt_solvers/QF_S/z3str3fed/': 0.08256888389587402, 'smt_solvers/QF_S/z3str3/': 0.11710977554321289}
;  score   = 0.13434433937072754
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (< (str.len (str.replace var2 var3 var2)) (str.indexof var2 var1 8)))(assert (> (str.len (str.replace var0 var1 var1)) (str.len (str.substr var3 var8 var10))))(assert (not var13))(assert (str.suffixof (str.substr var4 var8 7) (str.substr var1 var10 var6)))(assert (str.suffixof (str.at var4 var8) (str.substr var5 var10 var6)))(check-sat)