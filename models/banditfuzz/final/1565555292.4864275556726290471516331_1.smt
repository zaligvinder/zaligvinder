;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.1260077953338623, 'smt_solvers/QF_S/z3str3/': 0.10259532928466797, 'smt_solvers/QF_S/z3seq/': 0.09427523612976074, 'smt_solvers/QF_S/z3str3fed/': 0.07902193069458008}
;  score   = 0.023412466049194336
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (< (str.indexof var0 var3 var9) (str.indexof var1 var4 var8)))(assert (str.in_re var2 re.allchar))(assert (< (str.len var1) (str.indexof var3 var2 var6)))(assert (str.in_re var3 re.allchar))(assert (< (str.len var3) (str.indexof var2 var0 var5)))(check-sat)