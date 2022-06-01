;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.1153414249420166, 'smt_solvers/QF_S/cvc4/': 2500, 'smt_solvers/QF_S/z3str3fed/': 0.0991067886352539, 'smt_solvers/QF_S/z3str3/': 0.14711666107177734}
;  score   = 7499.852883338928
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'timeout', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.contains (str.replace "rWubs-Z-`y" var4 var1) (str.at var3 var8)))(assert (<= (str.len (str.substr var4 var9 var7)) (str.indexof (str.at var2 var8) (str.at var1 var8) (str.len var2))))(assert (str.prefixof var3 var2))(assert (> (str.indexof (str.replace var4 var3 var4) (str.replace var2 var4 var2) (str.indexof var3 var4 var9)) (str.len (str.replace ">aRUDAN#)k" var2 var4))))(assert (< var9 var8))(check-sat)