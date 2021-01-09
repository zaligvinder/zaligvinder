;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.06201744079589844, 'smt_solvers/QF_S/z3seq/': 0.07709693908691406, 'smt_solvers/QF_S/cvc4/': 0.06318116188049316, 'smt_solvers/QF_S/z3str3/': 0.07684731483459473}
;  score   = -0.013915777206420898
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.prefixof (str.at var1 var5) (str.at var0 var8)))(assert (>= (str.indexof var3 var2 var7) (str.len var1)))(assert (> (str.indexof var3 var4 var8) (str.indexof var2 var2 var7)))(assert (< (str.len var1) (str.len var1)))(assert (> (str.len var0) (str.indexof var1 var0 var5)))(check-sat)