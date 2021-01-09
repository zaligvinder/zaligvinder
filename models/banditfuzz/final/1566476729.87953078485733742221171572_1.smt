;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.3124372959136963, 'smt_solvers/QF_S/z3str3fed/': 0.07969403266906738, 'smt_solvers/QF_S/z3seq/': 0.10310983657836914, 'smt_solvers/QF_S/z3str3/': 0.09549331665039062}
;  score   = 0.20932745933532715
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (not var13))(assert (< var10 var6))(assert (str.prefixof "zb6ve?T)?p" "~ZUx,}oEog"))(assert (str.contains (str.substr (str.substr var3 var9 var7) (str.len var2) (str.len var2)) (str.at var1 var9)))(assert (str.contains (str.++ "S4,|FgN+u3" "S4,|FgN+u3") (str.at var5 var6)))(assert (> var8 var7))(assert (>= (str.len var5) (str.len "R4_QmP}_<'")))(check-sat)