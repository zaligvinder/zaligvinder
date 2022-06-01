;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.061987876892089844, 'smt_solvers/QF_S/z3str3/': 0.07774519920349121, 'smt_solvers/QF_S/z3seq/': 0.07812952995300293, 'smt_solvers/QF_S/z3str3fed/': 0.06476831436157227}
;  score   = -0.016141653060913086
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (not (<= var9 var9)))(assert (<= (str.len var1) (str.len var2)))(assert (str.suffixof (str.substr var4 var6 var7) (str.substr (str.at var0 var7) (str.len var4) (str.len "Xo8ku{EH<-"))))(assert (> (str.len var1) (str.indexof var4 "Gur8|u4dhb" var6)))(assert (str.in_re (str.at var0 var8) (re.* re.allchar)))(check-sat)