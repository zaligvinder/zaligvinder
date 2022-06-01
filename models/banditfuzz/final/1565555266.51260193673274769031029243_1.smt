;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.0645599365234375, 'smt_solvers/QF_S/z3str3/': 0.10526227951049805, 'smt_solvers/QF_S/cvc4/': 0.07087469100952148, 'smt_solvers/QF_S/z3seq/': 0.08370137214660645}
;  score   = -0.03438758850097656
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (not (str.suffixof (str.substr var3 2 var9) (str.replace var3 var1 var3))))(assert (<= (str.len var3) (str.len var1)))(assert (str.suffixof (str.substr var0 var7 var8) (str.replace var4 "odpM*b:ite" "KA?S!wX%^R")))(assert (str.in_re var1 re.allchar))(assert (<= (str.indexof var3 var3 var7) (str.len var1)))(check-sat)