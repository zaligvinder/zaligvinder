;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.08969259262084961, 'smt_solvers/QF_S/z3seq/': 0.08839607238769531, 'smt_solvers/QF_S/cvc4/': 0.23413968086242676, 'smt_solvers/QF_S/z3str3fed/': 0.06936478614807129}
;  score   = 0.14444708824157715
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.in_re (str.replace var3 var2 var3) (re.+ re.allchar)))(assert (<= (str.len var3) (str.indexof (str.at var0 var8) (str.at var3 var9) (str.len var0))))(assert (> (str.len var2) (str.len "6qQdOY39f4")))(assert (not (<= var6 var7)))(assert (str.in_re (str.substr (str.at var2 var9) (str.indexof var3 var0 2) (str.indexof var4 "'5kRoN:&FQ" var6)) (re.++ (re.+ re.allchar) (re.+ re.allchar))))(check-sat)