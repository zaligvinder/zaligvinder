;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.09028482437133789, 'smt_solvers/QF_S/cvc4/': 0.19286704063415527, 'smt_solvers/QF_S/z3seq/': 0.07845044136047363, 'smt_solvers/QF_S/z3str3fed/': 0.06213688850402832}
;  score   = 0.10258221626281738
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.contains (str.at var3 var6) (str.substr "zr'>;jsDEk" var8 var6)))(assert (str.suffixof (str.replace var0 var2 var4) (str.substr (str.substr var1 var8 var6) (str.indexof var3 var0 var7) (str.len var1))))(assert (< (str.indexof var4 var0 var9) (str.to_int "eqS}O""C#]U")))(assert (<= var8 var7))(assert (str.in_re (str.replace var3 var4 var1) (re.+ (re.* re.allchar))))(check-sat)