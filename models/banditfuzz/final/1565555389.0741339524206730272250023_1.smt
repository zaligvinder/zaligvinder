;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.16373896598815918, 'smt_solvers/QF_S/z3str3fed/': 0.12706995010375977, 'smt_solvers/QF_S/cvc4/': 0.43139052391052246, 'smt_solvers/QF_S/z3str3/': 0.12332010269165039}
;  score   = 0.2676515579223633
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (>= (str.indexof var4 var1 2) (str.len var1)))(assert (> (str.indexof "qVY;""F/t!2" var4 var9) (str.len var0)))(assert (> (str.len var0) (str.indexof var1 var2 var5)))(assert (> (str.indexof var3 "$Gde]9lhY)" var5) (str.indexof var1 var1 var5)))(assert (> (str.len (str.substr var2 var5 var7)) (str.len (str.replace var2 var0 var3))))(check-sat)