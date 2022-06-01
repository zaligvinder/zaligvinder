;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.06255698204040527, 'smt_solvers/QF_S/cvc4/': 0.061113595962524414, 'smt_solvers/QF_S/z3str3/': 0.07568669319152832, 'smt_solvers/QF_S/z3seq/': 0.07785344123840332}
;  score   = -0.016739845275878906
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (> (str.indexof (str.substr var3 var8 var9) (str.replace var4 var3 var3) (str.indexof var0 var1 2)) (str.len var1)))(assert (not (not var12)))(assert (> var5 var9))(assert (not var12))(assert (< var5 var7))(check-sat)