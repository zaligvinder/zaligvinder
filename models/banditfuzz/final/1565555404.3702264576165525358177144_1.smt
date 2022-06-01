;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.0976266860961914, 'smt_solvers/QF_S/z3str3fed/': 0.09778809547424316, 'smt_solvers/QF_S/z3str3/': 0.10422086715698242, 'smt_solvers/QF_S/cvc4/': 0.4116992950439453}
;  score   = 0.3074784278869629
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.in_re (str.substr var4 var6 var6) (re.+ re.allchar)))(assert (> (str.indexof (str.substr var2 var8 4) (str.replace var3 var1 "+,#FF""3O2\\") (str.indexof var2 var0 var7)) (str.indexof var0 var1 var5)))(assert (str.prefixof (str.at (str.substr var1 9 var8) (str.len var1)) (str.substr (str.at var1 var8) (str.indexof var4 var2 var9) (str.len var3))))(assert (str.in_re (str.at var1 var7) (re.* re.allchar)))(assert (< (str.len var0) (str.indexof var0 var2 var6)))(check-sat)