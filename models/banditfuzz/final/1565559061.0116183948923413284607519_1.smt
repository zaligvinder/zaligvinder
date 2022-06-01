;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.10820341110229492, 'smt_solvers/QF_S/z3str3fed/': 0.09068846702575684, 'smt_solvers/QF_S/z3str3/': 0.1494140625, 'smt_solvers/QF_S/cvc4/': 0.2160344123840332}
;  score   = 0.0666203498840332
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (>= (str.indexof var4 var2 var9) (str.len var4)))(assert (> (str.indexof var2 var4 var9) (str.indexof var1 var2 var9)))(assert (>= var9 var11))(assert (str.prefixof (str.replace var4 var2 var0) (str.at var0 var7)))(assert (str.prefixof var0 var2))(check-sat)