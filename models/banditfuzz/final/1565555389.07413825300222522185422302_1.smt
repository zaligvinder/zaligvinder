;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.19368815422058105, 'smt_solvers/QF_S/z3str3fed/': 0.07384610176086426, 'smt_solvers/QF_S/z3seq/': 0.0867762565612793, 'smt_solvers/QF_S/z3str3/': 0.10788440704345703}
;  score   = 0.08580374717712402
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (>= (str.len (str.substr var4 var7 var9)) (str.indexof var2 "|2X'(luv2y" var9)))(assert (not (str.contains var3 var0)))(assert (> (str.indexof var1 var0 var6) (str.len var1)))(assert (str.contains (str.at (str.replace var4 var4 var0) (str.indexof var3 var2 var6)) (str.at (str.replace var4 var0 "<A)$y,(`hj") (str.indexof var3 var0 var9))))(assert (str.in.re var0 re.allchar))(check-sat)