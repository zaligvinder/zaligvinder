;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.07093024253845215, 'smt_solvers/QF_S/z3seq/': 0.08757877349853516, 'smt_solvers/QF_S/cvc4/': 0.5622029304504395, 'smt_solvers/QF_S/z3str3/': 0.11181402206420898}
;  score   = 0.45038890838623047
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (<= (str.len var0) (str.indexof var4 var3 var9)))(assert (str.contains var3 var1))(assert (> (str.indexof var3 "(~ZX{$vBao" var8) (str.len var0)))(assert (> (str.indexof (str.substr var4 var9 1) (str.at var4 var8) (str.indexof var0 var1 6)) (str.len var2)))(assert (not (str.contains var4 var0)))(check-sat)