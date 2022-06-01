;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.09630274772644043, 'smt_solvers/QF_S/z3str3fed/': 0.07531380653381348, 'smt_solvers/QF_S/cvc4/': 0.23476815223693848, 'smt_solvers/QF_S/z3str3/': 0.0998995304107666}
;  score   = 0.13486862182617188
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.contains (str.at var4 var9) (str.substr var1 var6 var8)))(assert (not var13))(assert (str.prefixof var1 var4))(assert (< (str.indexof var2 var0 var6) (str.indexof (str.at var4 var7) (str.replace "+|(o;4<.~p" var1 var1) (str.len var2))))(assert (> (str.indexof var2 var4 var6) (str.len var4)))(check-sat)