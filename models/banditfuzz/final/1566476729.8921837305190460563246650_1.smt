;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.09015202522277832, 'smt_solvers/QF_S/z3str3fed/': 0.06701970100402832, 'smt_solvers/QF_S/cvc4/': 0.16008377075195312, 'smt_solvers/QF_S/z3seq/': 0.07951521873474121}
;  score   = 0.0699317455291748
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.contains var1 var2))(assert (>= var10 var10))(assert (<= (str.len var1) (str.len var2)))(assert (<= var7 var8))(assert (< (str.len var4) (str.indexof (str.substr "V6aEKM5mNy" var8 var6) (str.substr "V6aEKM5mNy" var8 var6) (str.len (str.at var4 var6)))))(assert (>= var9 var6))(assert (not (str.prefixof var3 var1)))(check-sat)