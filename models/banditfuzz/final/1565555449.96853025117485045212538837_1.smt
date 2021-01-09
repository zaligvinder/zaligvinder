;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.18640446662902832, 'smt_solvers/QF_S/z3seq/': 0.1081552505493164, 'smt_solvers/QF_S/z3str3/': 0.11254739761352539, 'smt_solvers/QF_S/z3str3fed/': 0.09345793724060059}
;  score   = 0.07385706901550293
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (> (str.len var4) (str.len var4)))(assert (str.suffixof (str.at var0 var6) (str.at var2 var6)))(assert (str.in.re var2 re.allchar))(assert (not (str.suffixof var3 var1)))(assert (>= var6 var7))(check-sat)