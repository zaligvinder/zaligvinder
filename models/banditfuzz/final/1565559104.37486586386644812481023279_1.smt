;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.09850144386291504, 'smt_solvers/QF_S/z3str3fed/': 0.08443570137023926, 'smt_solvers/QF_S/z3str3/': 0.10301852226257324, 'smt_solvers/QF_S/cvc4/': 1.3294193744659424}
;  score   = 1.2264008522033691
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (<= (str.len var2) (str.indexof var3 var1 var9)))(assert (str.contains "C=yG6\\|!9F" var0))(assert (> (str.indexof var4 var3 var7) (str.to.int var0)))(assert (str.in.re var0 (re.+ (re.+ re.allchar))))(assert (not (>= (str.len var4) (str.len var1))))(check-sat)