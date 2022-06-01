;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.09867310523986816, 'smt_solvers/QF_S/z3str3fed/': 0.0835714340209961, 'smt_solvers/QF_S/cvc4/': 0.19565725326538086, 'smt_solvers/QF_S/z3str3/': 0.1120138168334961}
;  score   = 0.08364343643188477
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (not (str.suffixof var1 var5)))(assert (str.in_re (str.at (str.at var5 var8) (str.indexof var4 var0 var10)) (re.+ (re.+ re.allchar))))(assert (< (str.len var4) (str.indexof var3 var2 var11)))(assert (>= (str.indexof (str.at var2 var8) (str.substr var4 var7 var9) (str.len var3)) (str.len var0)))(assert (str.contains var3 var1))(check-sat)