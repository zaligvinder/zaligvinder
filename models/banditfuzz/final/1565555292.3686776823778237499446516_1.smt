;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.08670592308044434, 'smt_solvers/QF_S/z3str3fed/': 0.06827139854431152, 'smt_solvers/QF_S/cvc4/': 0.1752612590789795, 'smt_solvers/QF_S/z3str3/': 0.09560823440551758}
;  score   = 0.07965302467346191
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.prefixof (str.replace var2 var2 var2) (str.replace var3 var1 var3)))(assert (str.in_re (str.substr (str.at var4 var8) (str.indexof "r{<KX~-TCy" var2 var9) (str.indexof var0 var2 var6)) (re.+ re.allchar)))(assert (str.in_re var0 re.allchar))(assert (<= (str.indexof (str.replace var1 var1 var1) (str.replace "D5w9mO5$G0" var4 var2) (str.indexof var4 var2 var5)) (str.len (str.at var2 var8))))(assert (< (str.len var4) (str.indexof var4 var1 var6)))(check-sat)