;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.11683917045593262, 'smt_solvers/QF_S/cvc4/': 0.19144916534423828, 'smt_solvers/QF_S/z3str3fed/': 0.08809232711791992, 'smt_solvers/QF_S/z3seq/': 0.10867834091186523}
;  score   = 0.07460999488830566
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.contains var3 var2))(assert (str.contains (str.substr var4 4 var7) (str.substr (str.replace var1 var0 var0) (str.indexof var4 var1 var7) (str.indexof var1 var3 var7))))(assert (str.contains (str.at var0 10) (str.at "txLOyfyJ,'" var8)))(assert (str.contains (str.at var3 var6) (str.replace "(TI{/3(_,B" var2 var2)))(assert (str.prefixof var1 var3))(check-sat)