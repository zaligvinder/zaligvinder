;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.2584061622619629, 'smt_solvers/QF_S/cvc4/': 0.06956744194030762, 'smt_solvers/QF_S/z3str3fed/': 0.13325262069702148, 'smt_solvers/QF_S/z3seq/': 0.09616541862487793}
;  score   = -0.18883872032165527
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'sat', 'smt_solvers/QF_S/cvc4/': 'sat', 'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/z3seq/': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.contains var0 var3))(assert (< (str.indexof var1 var1 var8) (str.indexof (str.at var3 var8) (str.substr var4 var8 var8) (str.indexof var1 var1 var7))))(assert (< var5 0))(assert (str.suffixof (str.substr var2 var8 var9) (str.replace var3 var2 var1)))(assert (not var14))(check-sat)