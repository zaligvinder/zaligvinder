;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.3606874942779541, 'smt_solvers/QF_S/cvc4/': 2500, 'smt_solvers/QF_S/z3str3fed/': 0.07903361320495605, 'smt_solvers/QF_S/z3seq/': 0.10053253173828125}
;  score   = 7499.639312505722
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'timeout', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (< (str.len var0) (str.len var1)))(assert (str.prefixof (str.replace var1 ":b@KrV@^=*" var4) (str.replace var4 var0 "8Cs)0D7tL0")))(assert (<= var8 var5))(assert (str.in_re (str.substr (str.replace var3 var3 var4) (str.len var1) (str.len var3)) (re.+ (re.+ re.allchar))))(assert (< (str.indexof var4 var2 var9) (str.indexof var1 var4 var7)))(check-sat)