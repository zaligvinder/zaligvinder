;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.09296417236328125, 'smt_solvers/QF_S/z3str3/': 0.10894107818603516, 'smt_solvers/QF_S/cvc4/': 0.18161892890930176, 'smt_solvers/QF_S/z3str3fed/': 0.07665371894836426}
;  score   = 0.0726778507232666
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (< (str.len var2) (str.indexof var2 var4 var5)))(assert (str.prefixof (str.substr var4 var5 var5) (str.at var4 var9)))(assert (str.suffixof (str.substr var1 var6 var6) (str.replace "orbYp<Zlfd" var2 var0)))(assert (str.prefixof (str.substr (str.replace var2 var4 var0) (str.len var1) (str.len var4)) (str.at (str.substr var1 var7 var5) (str.indexof var2 var1 var7))))(assert (str.suffixof (str.at (str.at var4 7) (str.len var3)) (str.replace var3 var4 var3)))(check-sat)