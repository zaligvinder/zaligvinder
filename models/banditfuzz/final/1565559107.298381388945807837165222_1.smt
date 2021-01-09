;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.07714724540710449, 'smt_solvers/QF_S/cvc4/': 0.17056560516357422, 'smt_solvers/QF_S/z3str3/': 0.10274696350097656, 'smt_solvers/QF_S/z3seq/': 0.09219670295715332}
;  score   = 0.06781864166259766
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (< (str.len (str.replace var0 var1 var0)) (str.len (str.substr var1 var6 var6))))(assert (>= (str.indexof var0 var2 var10) (str.len var1)))(assert (str.suffixof var4 var5))(assert (str.prefixof var3 "t}AZ;xW""R%"))(assert (str.suffixof (str.substr var1 var8 var7) (str.substr var0 var8 var7)))(check-sat)