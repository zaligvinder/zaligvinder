;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.09139800071716309, 'smt_solvers/QF_S/z3str3fed/': 0.07169699668884277, 'smt_solvers/QF_S/z3str3/': 0.09454798698425293, 'smt_solvers/QF_S/cvc4/': 0.1720116138458252}
;  score   = 0.07746362686157227
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (< var10 var10))(assert (str.suffixof (str.at var5 var6) (str.substr var0 var11 var8)))(assert (str.suffixof (str.substr var2 7 var9) (str.substr var2 7 var9)))(assert (<= (str.len var5) (str.indexof var5 var2 var9)))(assert (str.prefixof (str.at var1 (str.len (str.substr var2 var11 var6))) (str.replace var5 var2 var5)))(check-sat)