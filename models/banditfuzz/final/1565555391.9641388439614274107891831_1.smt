;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.24364018440246582, 'smt_solvers/QF_S/z3str3fed/': 0.06681108474731445, 'smt_solvers/QF_S/z3str3/': 0.09034991264343262, 'smt_solvers/QF_S/z3seq/': 0.08478403091430664}
;  score   = 0.1532902717590332
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (>= (str.indexof (str.at var1 6) (str.replace var4 var3 var1) (str.len var2)) (str.len var3)))(assert (str.suffixof (str.substr var4 var8 var5) (str.at var1 var6)))(assert (str.suffixof (str.replace var3 "%A2`FS$FVs" var3) (str.at var3 var5)))(assert (not (str.prefixof var1 var4)))(assert (>= (str.indexof var2 var1 var6) (str.len (str.at var3 var5))))(check-sat)