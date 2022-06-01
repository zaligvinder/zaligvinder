;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.10656070709228516, 'smt_solvers/QF_S/cvc4/': 0.15435361862182617, 'smt_solvers/QF_S/z3seq/': 0.09005069732666016, 'smt_solvers/QF_S/z3str3fed/': 0.08255147933959961}
;  score   = 0.047792911529541016
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.prefixof (str.replace var2 "|$[wbg[)`S" var4) (str.at var4 var6)))(assert (str.in_re (str.at "W2(t^5KiSH" var8) (re.+ re.allchar)))(assert (<= var7 var9))(assert (not (< var7 var11)))(assert (> (str.indexof var1 var4 var8) (str.len var1)))(check-sat)