;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.058379173278808594, 'smt_solvers/QF_S/z3seq/': 0.07415103912353516, 'smt_solvers/QF_S/z3str3/': 0.07688188552856445, 'smt_solvers/QF_S/cvc4/': 0.09131693840026855}
;  score   = 0.014435052871704102
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (not true))(assert (str.in.re (str.at var0 var5) (str.to.re (str.replace var0 var1 var0))))(assert (str.contains var3 var0))(assert (str.suffixof (str.substr (str.substr var2 var8 5) (str.indexof "rbdE'acg*{" var2 var9) (str.indexof var2 var0 var5)) (str.at var2 var9)))(assert (>= (str.indexof (str.substr var1 var9 var9) (str.replace var0 var0 var0) (str.len var1)) (str.indexof var1 var1 (str.indexof (str.substr var3 var5 var5) (str.substr var3 var5 var5) (str.len var4)))))(check-sat)