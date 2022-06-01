;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 2500, 'smt_solvers/QF_S/z3str3/': 2500, 'smt_solvers/QF_S/z3str3fed/': 0.5298318862915039, 'smt_solvers/QF_S/z3seq/': 0.15621614456176758}
;  score   = 0.0
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'timeout', 'smt_solvers/QF_S/z3str3/': 'timeout', 'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/z3seq/': 'sat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.contains (str.at var1 3) (str.substr var3 var7 var10)))(assert (str.contains (str.substr var3 var7 var7) (str.at (str.substr var2 var9 var6) (str.len var5))))(assert (not (str.prefixof (str.replace var3 var4 var4) (str.replace "3~""hmSrAMl" var4 var3))))(assert (>= var10 var9))(assert (str.in_re (str.replace var0 var1 var4) (re.* (re.+ re.allchar))))(check-sat)