;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.08888626098632812, 'smt_solvers/QF_S/cvc4/': 1.6845817565917969, 'smt_solvers/QF_S/z3str3fed/': 0.07087516784667969, 'smt_solvers/QF_S/z3str3/': 0.09403800964355469}
;  score   = 1.5905437469482422
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (not (str.suffixof var1 var3)))(assert (str.suffixof (str.at var2 10) (str.substr (str.substr var5 6 var8) (str.len var1) (str.len var3))))(assert (> (str.len var4) (str.len var0)))(assert (not var15))(assert (>= (str.indexof var4 var3 var6) (str.indexof var5 var3 var11)))(assert (str.contains (str.substr var3 var6 var11) (str.substr var0 var9 var9)))(assert (> (str.indexof var0 var2 var8) (str.len var0)))(check-sat)