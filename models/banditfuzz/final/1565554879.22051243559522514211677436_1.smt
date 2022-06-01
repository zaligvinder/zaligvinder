;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.06654000282287598, 'smt_solvers/QF_S/cvc4/': 0.07419729232788086, 'smt_solvers/QF_S/z3str3/': 0.08576750755310059, 'smt_solvers/QF_S/z3seq/': 0.08775186538696289}
;  score   = -0.013554573059082031
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (> (str.len var4) (str.len var4)))(assert (str.prefixof (str.substr (str.substr "W&zp'O8L#5" var8 var6) (str.len var2) (str.len var2)) (str.at var0 var5)))(assert (> var6 var5))(assert (< (str.len var4) (str.indexof var3 var4 var7)))(assert (str.suffixof (str.at var4 (str.len (str.replace var0 var1 var0))) (str.substr var1 var6 var6)))(check-sat)