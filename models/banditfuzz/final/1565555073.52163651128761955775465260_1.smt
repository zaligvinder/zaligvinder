;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.08710002899169922, 'smt_solvers/QF_S/cvc4/': 0.17410039901733398, 'smt_solvers/QF_S/z3str3fed/': 0.16003060340881348, 'smt_solvers/QF_S/z3seq/': 0.1794109344482422}
;  score   = -0.005310535430908203
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'sat', 'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/z3seq/': 'sat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (> (str.indexof (str.at var4 var6) (str.substr var4 var5 var7) (str.len var3)) (str.len (str.substr "`*/[xxDxxT" var5 var5))))(assert (< var8 var6))(assert (str.suffixof (str.at (str.at var2 var6) (str.len var0)) (str.at var0 var8)))(assert (> (str.indexof var0 var2 var7) (str.indexof var1 var3 var5)))(assert (str.in_re var0 re.allchar))(check-sat)