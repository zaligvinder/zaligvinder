;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.23207354545593262, 'smt_solvers/QF_S/z3seq/': 0.20465707778930664, 'smt_solvers/QF_S/z3str3fed/': 0.2306654453277588, 'smt_solvers/QF_S/z3str3/': 0.1620340347290039}
;  score   = 0.0014081001281738281
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (not var13))(assert (str.contains (str.at var1 9) (str.replace (str.substr var0 1 var7) (str.replace var1 var2 var1) (str.substr var0 var7 var7))))(assert (str.in_re "6Q3w)D<Fh)" re.allchar))(assert (str.contains var2 var2))(assert (str.in_re var2 re.allchar))(check-sat)