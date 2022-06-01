;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.07068228721618652, 'smt_solvers/QF_S/cvc4/': 0.1617724895477295, 'smt_solvers/QF_S/z3seq/': 0.08913969993591309, 'smt_solvers/QF_S/z3str3/': 0.09484553337097168}
;  score   = 0.06692695617675781
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (> 2 7))(assert (str.suffixof (str.at var3 var8) (str.at var4 var6)))(assert (str.in_re (str.replace var3 var0 var4) (re.inter re.allchar re.allchar)))(assert (> var11 var9))(assert (< (str.indexof var4 var4 3) (str.indexof var0 var1 var9)))(check-sat)