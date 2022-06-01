;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.11438727378845215, 'smt_solvers/QF_S/z3seq/': 0.0953364372253418, 'smt_solvers/QF_S/z3str3fed/': 0.08031535148620605, 'smt_solvers/QF_S/cvc4/': 0.9998910427093506}
;  score   = 0.8855037689208984
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.contains (str.at ":i/5}/R|oO" var6) (str.replace "3+Q$(X5)\\]" var4 var0)))(assert (str.contains var0 "#Lgr4:3Tt!"))(assert (str.contains var1 "YBtW5.Sg(r"))(assert (not (>= var5 var7)))(assert (str.contains (str.replace var2 var2 var0) (str.replace var4 var1 var1)))(check-sat)