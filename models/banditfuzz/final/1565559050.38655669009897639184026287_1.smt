;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.19833970069885254, 'smt_solvers/QF_S/z3str3/': 0.12440299987792969, 'smt_solvers/QF_S/cvc4/': 2500, 'smt_solvers/QF_S/z3seq/': 0.106353759765625}
;  score   = 7499.801660299301
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'timeout', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.in.re (str.replace (str.at var3 var10) (str.replace var2 var0 var1) (str.replace var1 "*.Ra7!TD9E" "XR}~?7;mJ;")) (re.* (re.* re.allchar))))(assert (not (str.suffixof "Qa.)QYSoKa" var0)))(assert (str.in.re (str.substr (str.replace var5 var5 var5) (str.len var1) (str.len var1)) (re.+ (re.+ re.allchar))))(assert (>= var10 var11))(assert (> (str.indexof var1 var5 var11) (str.len "nwQBk]ylDx")))(check-sat)