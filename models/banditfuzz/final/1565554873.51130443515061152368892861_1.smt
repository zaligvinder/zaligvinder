;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.08970236778259277, 'smt_solvers/QF_S/z3str3fed/': 0.07346510887145996, 'smt_solvers/QF_S/cvc4/': 0.15754294395446777, 'smt_solvers/QF_S/z3str3/': 0.11369752883911133}
;  score   = 0.043845415115356445
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (not var11))(assert (<= (str.indexof (str.replace var4 var4 "kTMwsSjB`1") (str.at "Sof@)SGO5a" 0) (str.indexof var1 var0 var6)) (str.indexof (str.at var2 var9) (str.substr var2 (str.indexof var2 var0 var5) (str.indexof var3 var1 var8)) (str.indexof var2 var3 var7))))(assert (str.in_re (str.at (str.substr "@tITQbJ/`<" var7 var8) (str.len "[t[gct6)Qs")) (re.+ re.allchar)))(assert (<= (str.len (str.substr var0 var6 var8)) (str.len (str.substr var1 var7 var5))))(assert (< var5 var8))(check-sat)