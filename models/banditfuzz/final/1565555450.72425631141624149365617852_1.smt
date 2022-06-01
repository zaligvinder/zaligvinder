;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 27.863646984100342, 'smt_solvers/QF_S/cvc4/': 2500, 'smt_solvers/QF_S/z3str3fed/': 24.690381288528442, 'smt_solvers/QF_S/z3seq/': 0.11664581298828125}
;  score   = 7472.1363530159
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'timeout', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'sat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (not (<= (str.indexof var1 var0 var9) (str.indexof var0 var4 var9))))(assert (str.contains (str.at var2 var9) (str.substr (str.at "oF';7FG>8F" var9) (str.indexof var4 var3 var5) (str.len var2))))(assert (<= (str.len var3) (str.len (str.at var4 var5))))(assert (str.suffixof (str.replace var1 var0 var2) (str.substr var0 var7 6)))(assert (<= var5 var8))(check-sat)