;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 2500, 'smt_solvers/QF_S/z3str3/': 0.12955546379089355, 'smt_solvers/QF_S/z3seq/': 0.10851740837097168, 'smt_solvers/QF_S/z3str3fed/': 0.09151673316955566}
;  score   = 7499.870444536209
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'timeout', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (< (str.indexof var2 var3 var7) (str.len var0)))(assert (str.in.re (str.substr var0 var5 var6) (re.* re.allchar)))(assert (< (str.len var4) (str.indexof var3 var1 var7)))(assert (str.in.re (str.at (str.replace var2 var2 var1) (str.len var3)) (re.+ re.allchar)))(assert (< (str.len var1) (str.indexof (str.at var2 var8) (str.at var1 var5) (str.indexof "C|l_k4~6xB" var0 var6))))(check-sat)