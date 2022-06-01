;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.18019390106201172, 'smt_solvers/QF_S/z3str3/': 0.10296511650085449, 'smt_solvers/QF_S/z3str3fed/': 0.07928085327148438, 'smt_solvers/QF_S/z3seq/': 0.09708094596862793}
;  score   = 0.07722878456115723
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.contains (str.at var4 var8) (str.replace var0 var4 var3)))(assert (<= (str.len (str.replace var0 var4 var0)) (str.len var2)))(assert (str.suffixof (str.at (str.at var2 var9) (str.len var3)) (str.at var1 var9)))(assert (str.prefixof (str.replace var4 var0 "cRI(tOh4[W") (str.at var3 var6)))(assert (str.prefixof "z0|9z*:9pn" var1))(check-sat)