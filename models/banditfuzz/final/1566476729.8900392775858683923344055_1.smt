;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.09534716606140137, 'smt_solvers/QF_S/z3str3/': 0.10256361961364746, 'smt_solvers/QF_S/cvc4/': 12.190488815307617, 'smt_solvers/QF_S/z3str3fed/': 0.0781402587890625}
;  score   = 12.08792519569397
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (> (str.len var5) (str.len (str.replace var5 var2 var0))))(assert (str.prefixof "IWF5n6[@m1" var4))(assert (< (str.len var2) (str.indexof var3 var0 var11)))(assert (<= var11 var8))(assert (<= (str.indexof var5 var5 var9) (str.indexof var1 var1 var7)))(assert (>= (str.indexof var0 var5 var7) (str.len (str.at var2 var9))))(assert (str.suffixof var2 "?vz5Ri|UI%"))(check-sat)