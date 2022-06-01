;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.22228431701660156, 'smt_solvers/QF_S/z3seq/': 0.25240135192871094, 'smt_solvers/QF_S/z3str3fed/': 0.2559075355529785, 'smt_solvers/QF_S/cvc4/': 0.16073989868164062}
;  score   = -0.09516763687133789
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'sat', 'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/cvc4/': 'sat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (<= (str.indexof var4 var4 (str.indexof var0 var0 var7)) (str.indexof var1 var3 10)))(assert (not (> (str.len "-n%roP(nU_") (str.len var1))))(assert (>= var8 var7))(assert (>= var5 var8))(assert (str.contains (str.substr var2 var9 var7) (str.replace var4 var0 var3)))(check-sat)