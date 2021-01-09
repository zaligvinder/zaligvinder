;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.11134767532348633, 'smt_solvers/QF_S/z3str3/': 0.1792612075805664, 'smt_solvers/QF_S/z3str3fed/': 0.08018040657043457, 'smt_solvers/QF_S/cvc4/': 0.3235657215118408}
;  score   = 0.14430451393127441
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.in.re (str.substr (str.substr var0 8 var5) (str.indexof var4 var1 var8) (str.indexof var0 var3 var8)) (re.+ re.allchar)))(assert (< var5 var8))(assert (> (str.indexof (str.replace var4 var3 var1) (str.at var3 var9) (str.len var4)) (str.len (str.replace var2 var2 var0))))(assert (>= (str.len var1) (str.indexof var3 var2 var6)))(assert (>= (str.len var3) (str.indexof (str.replace var1 var2 var2) (str.at "T09*K_EX~S" var9) (str.len var2))))(check-sat)