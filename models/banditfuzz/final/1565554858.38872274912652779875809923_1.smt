;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.09554338455200195, 'smt_solvers/QF_S/cvc4/': 0.06513237953186035, 'smt_solvers/QF_S/z3str3fed/': 0.06969928741455078, 'smt_solvers/QF_S/z3str3/': 0.12752509117126465}
;  score   = -0.0623927116394043
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/cvc4/': 'sat', 'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/z3str3/': 'sat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.contains (str.at var0 var5) (str.substr var0 var9 var7)))(assert (str.suffixof (str.at var1 var6) (str.substr var3 var6 var5)))(assert (str.contains (str.replace var3 var0 var3) (str.substr var3 var9 var5)))(assert (str.in_re (str.++ var4 var1) (re.* re.allchar)))(assert (str.suffixof var1 var1))(check-sat)