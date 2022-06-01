;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 4.179976940155029, 'smt_solvers/QF_S/cvc4/': 2500, 'smt_solvers/QF_S/z3str3/': 68.52845048904419, 'smt_solvers/QF_S/z3str3fed/': 0.5588929653167725}
;  score   = 7431.471549510956
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/cvc4/': 'timeout', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'sat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.in_re (str.substr var3 var7 var9) (re.++ re.allchar re.allchar)))(assert (str.suffixof (str.substr var2 var9 var6) (str.substr var4 var6 var7)))(assert (<= (str.len var2) (str.indexof (str.++ "@S.of%D3YY" "@S.of%D3YY") (str.replace var5 var0 var3) (str.indexof var5 "!BJ]^&P4<]" var7))))(assert (str.suffixof var5 var1))(assert (>= 9 var7))(check-sat)