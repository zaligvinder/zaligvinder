;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.08678174018859863, 'smt_solvers/QF_S/z3str3fed/': 0.0715334415435791, 'smt_solvers/QF_S/z3str3/': 0.09412646293640137, 'smt_solvers/QF_S/cvc4/': 0.18224644660949707}
;  score   = 0.0881199836730957
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.suffixof (str.at var2 var9) (str.replace var4 var4 var4)))(assert (not (<= var8 var9)))(assert (> 10 10))(assert (str.in.re var0 re.allchar))(assert (str.in.re (str.substr var1 var6 var8) (re.* (re.++ (re.* re.allchar) (re.* re.allchar)))))(check-sat)