;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.09681200981140137, 'smt_solvers/QF_S/z3str3/': 0.09756326675415039, 'smt_solvers/QF_S/cvc4/': 0.16984009742736816, 'smt_solvers/QF_S/z3str3fed/': 0.07549238204956055}
;  score   = 0.07227683067321777
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.suffixof (str.substr var0 var7 var7) (str.replace var2 var4 var2)))(assert (str.in_re var0 re.allchar))(assert (> (str.len (str.at var1 var7)) (str.len var1)))(assert (str.contains (str.substr (str.at var0 var9) (str.indexof var0 var1 var9) (str.indexof "f(J;h3IQSG" var2 var6)) (str.at var0 var8)))(assert (str.contains (str.replace var4 var0 var0) (str.replace var0 var2 var0)))(check-sat)