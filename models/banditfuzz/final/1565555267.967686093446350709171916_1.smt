;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.0961761474609375, 'smt_solvers/QF_S/z3seq/': 0.08715701103210449, 'smt_solvers/QF_S/cvc4/': 0.1469709873199463, 'smt_solvers/QF_S/z3str3fed/': 0.07360196113586426}
;  score   = 0.05079483985900879
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (<= (str.len var0) (str.len var3)))(assert (>= (str.indexof var0 "tq~NLj+V5g" var9) (str.indexof var1 var2 var5)))(assert (> (str.len var4) (str.len var3)))(assert (> (str.len (str.replace var3 var4 var2)) (str.indexof var3 var3 var5)))(assert (str.suffixof var4 var3))(check-sat)