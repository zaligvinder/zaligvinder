;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.10700583457946777, 'smt_solvers/QF_S/z3str3fed/': 0.08266282081604004, 'smt_solvers/QF_S/z3seq/': 0.09844493865966797, 'smt_solvers/QF_S/cvc4/': 0.20662713050842285}
;  score   = 0.09962129592895508
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.suffixof (str.replace "2_w&&gvW$]" var0 var0) (str.at var0 var6)))(assert (not var17))(assert (str.in_re (str.at var2 var9) (re.+ re.allchar)))(assert (str.contains var3 var5))(assert (< (str.len var3) (str.len var0)))(assert (< (str.indexof var4 var2 var10) (str.indexof var3 var1 var6)))(assert (<= (str.len var1) (str.indexof var5 var2 var8)))(check-sat)