;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.09505128860473633, 'smt_solvers/QF_S/z3seq/': 0.0952296257019043, 'smt_solvers/QF_S/cvc4/': 0.1824817657470703, 'smt_solvers/QF_S/z3str3fed/': 0.08373594284057617}
;  score   = 0.08725214004516602
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (> (str.indexof var1 var2 var7) (str.indexof var3 var3 var7)))(assert (>= (str.indexof var1 var0 var9) (str.len var2)))(assert (<= (str.len (str.replace var0 "j1)PX&+5WR" var3)) (str.indexof (str.at var3 var5) (str.replace "%3XE[jhNLy" var2 var4) (str.len var4))))(assert (str.suffixof var1 var4))(assert (> (str.len var1) (str.indexof var3 var3 var6)))(check-sat)