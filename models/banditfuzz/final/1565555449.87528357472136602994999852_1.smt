;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.10379695892333984, 'smt_solvers/QF_S/z3str3/': 0.10624432563781738, 'smt_solvers/QF_S/cvc4/': 3.9191296100616455, 'smt_solvers/QF_S/z3str3fed/': 0.07876420021057129}
;  score   = 3.812885284423828
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (> (str.indexof (str.substr "{Ky'xY=%Sj" var8 10) (str.replace var1 var3 var1) (str.indexof var2 """\\sHeMv#a_" var8)) (str.len var0)))(assert (not (not var10)))(assert (str.contains (str.at var2 var9) (str.substr (str.replace "WZF/bX#R-}" "cd4O6uEYSe" var3) (str.indexof var2 var1 var7) (str.indexof var0 var3 var5))))(assert (< (str.len var2) (str.len var3)))(assert (> (str.indexof var1 var3 var7) (str.indexof var4 var2 var7)))(check-sat)