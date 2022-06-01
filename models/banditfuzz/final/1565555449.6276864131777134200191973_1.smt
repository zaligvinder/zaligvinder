;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.11928534507751465, 'smt_solvers/QF_S/z3str3fed/': 0.09868216514587402, 'smt_solvers/QF_S/z3str3/': 0.13112211227416992, 'smt_solvers/QF_S/cvc4/': 2500}
;  score   = 7499.868877887726
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'timeout'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.suffixof (str.substr (str.at var3 var7) (str.len var0) (str.len var2)) (str.at var2 var8)))(assert (str.contains (str.replace (str.at ")`6})T>HG|" var8) (str.at var1 var6) (str.replace var1 var3 var3)) (str.at var0 var9)))(assert (<= (str.len var2) (str.indexof ":Rds<(VSHg" var4 var5)))(assert (< (str.indexof var0 "3<K'g21|@_" var8) (str.indexof var4 "UbKI&gk@7)" var6)))(assert (not (< var9 var7)))(check-sat)