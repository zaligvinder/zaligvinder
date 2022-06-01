;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.27434611320495605, 'smt_solvers/QF_S/z3str3fed/': 0.08759522438049316, 'smt_solvers/QF_S/z3str3/': 0.13182830810546875, 'smt_solvers/QF_S/z3seq/': 0.10840797424316406}
;  score   = 0.1425178050994873
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (<= var8 var8))(assert (< (str.len var0) (str.indexof (str.replace var0 var0 var4) (str.replace var4 var0 var3) (str.len var1))))(assert (>= (str.len (str.substr var4 var8 var8)) (str.indexof (str.substr var1 var6 1) (str.substr var0 var9 var9) (str.indexof var4 var2 var5))))(assert (str.prefixof var0 var4))(assert (str.suffixof (str.substr (str.at var1 var6) (str.len var3) (str.len "^a=mnz-""vM")) (str.substr var2 var5 var6)))(check-sat)