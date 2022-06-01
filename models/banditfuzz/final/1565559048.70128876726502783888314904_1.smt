;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.2092890739440918, 'smt_solvers/QF_S/z3str3/': 0.08669161796569824, 'smt_solvers/QF_S/z3seq/': 0.08505892753601074, 'smt_solvers/QF_S/z3str3fed/': 0.06552267074584961}
;  score   = 0.12259745597839355
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (not (str.in_re (str.substr var5 var9 var7) (re.* re.allchar))))(assert (str.prefixof (str.at var4 var10) (str.substr var2 var8 var7)))(assert (str.in_re ":uerKg%[zp" re.allchar))(assert (str.prefixof (str.substr var0 var11 var7) (str.at var5 2)))(assert (not (str.suffixof var0 var5)))(check-sat)