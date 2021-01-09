;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.06405973434448242, 'smt_solvers/QF_S/z3str3/': 0.07954931259155273, 'smt_solvers/QF_S/z3seq/': 0.0809946060180664, 'smt_solvers/QF_S/z3str3fed/': 0.06320381164550781}
;  score   = -0.016934871673583984
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (not (str.in.re (str.replace var2 "hrp!Yd+dN`" var0) (re.* re.allchar))))(assert (not (str.contains var4 var1)))(assert (<= var8 var9))(assert (str.suffixof (str.substr (str.substr var0 5 var6) (str.len var4) (str.indexof var2 var4 var9)) (str.at (str.++ var1 var1) (str.indexof var0 var4 var7))))(assert (>= var8 var5))(check-sat)