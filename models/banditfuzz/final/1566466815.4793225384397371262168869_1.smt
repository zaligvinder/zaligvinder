;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.3575417995452881, 'smt_solvers/QF_S/cvc4/': 2500, 'smt_solvers/QF_S/z3seq/': 0.25882601737976074, 'smt_solvers/QF_S/z3str3fed/': 0.1836686134338379}
;  score   = 7499.642458200455
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'timeout', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (> (str.indexof "WIA~`:E%NP" var3 var7) (str.indexof var5 var1 var9)))(assert (str.prefixof (str.at var4 var6) (str.at var5 var8)))(assert (< (str.len var4) (str.len var1)))(assert (< (str.len var3) (str.indexof var3 var2 8)))(assert (str.prefixof (str.at var0 var7) (str.at var4 5)))(assert (str.contains (str.at "*"";&-MM{1#" var6) (str.substr var5 var10 var8)))(assert (str.contains var1 var1))(check-sat)