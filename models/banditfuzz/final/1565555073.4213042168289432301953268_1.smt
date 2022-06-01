;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.05977201461791992, 'smt_solvers/QF_S/cvc4/': 0.05840325355529785, 'smt_solvers/QF_S/z3str3/': 0.07198357582092285, 'smt_solvers/QF_S/z3seq/': 0.0699765682220459}
;  score   = -0.013580322265625
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (not (>= var6 var6)))(assert (> var7 var8))(assert (str.in_re (str.replace var2 var4 var0) (re.* re.allchar)))(assert (str.contains (str.at var3 var8) (str.at (str.substr var4 var8 var5) (str.len var3))))(assert (> (str.indexof var2 var1 var5) (str.indexof "vGhPdm]>Qa" var1 var8)))(check-sat)