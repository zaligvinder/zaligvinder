;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.07477259635925293, 'smt_solvers/QF_S/z3str3/': 0.0774698257446289, 'smt_solvers/QF_S/z3str3fed/': 0.05881690979003906, 'smt_solvers/QF_S/cvc4/': 0.13761520385742188}
;  score   = 0.06014537811279297
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (< (str.indexof var0 var0 var8) (str.indexof var4 var4 var5)))(assert (str.in_re (str.replace var1 var3 var3) (re.* re.allchar)))(assert (str.in_re (str.substr var4 6 var9) (re.* re.allchar)))(assert (str.contains (str.at var0 var5) (str.at var1 var6)))(assert (not (<= var7 var7)))(check-sat)