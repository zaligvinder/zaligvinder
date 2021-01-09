;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.11356925964355469, 'smt_solvers/QF_S/z3seq/': 0.11235165596008301, 'smt_solvers/QF_S/z3str3fed/': 0.09777712821960449, 'smt_solvers/QF_S/cvc4/': 0.2203207015991211}
;  score   = 0.1067514419555664
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.in.re var2 re.allchar))(assert (< (str.len ",vKE2`bK6o") (str.len var3)))(assert (str.prefixof var2 var1))(assert (< (str.indexof var1 var4 var6) (str.indexof (str.at var1 var6) (str.replace var3 var4 var0) (str.indexof var4 var3 9))))(assert (str.prefixof (str.substr var0 var8 var8) (str.at var1 var8)))(check-sat)