;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 2500, 'smt_solvers/QF_S/cvc4/': 2500, 'smt_solvers/QF_S/z3str3/': 2500, 'smt_solvers/QF_S/z3str3fed/': 355.9156279563904}
;  score   = 0.0
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'timeout', 'smt_solvers/QF_S/cvc4/': 'timeout', 'smt_solvers/QF_S/z3str3/': 'timeout', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.contains (str.substr var5 var9 var8) (str.replace var3 "Rm}{wRYigm" var5)))(assert (> (str.indexof var5 var1 var9) (str.len var1)))(assert (> (str.indexof var1 "))m$'LX/<X" var7) (str.indexof var3 var0 var11)))(assert (>= (str.len (str.substr var1 var7 var7)) (str.indexof (str.substr "'n/0Qg3En$" 5 var10) (str.substr "aY|""u{0]{%" var10 var9) (str.len var5))))(assert (< (str.indexof var5 var0 var9) (str.len "an48SF-dWd")))(check-sat)