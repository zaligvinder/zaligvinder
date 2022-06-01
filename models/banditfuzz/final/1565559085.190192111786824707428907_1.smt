;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.09252691268920898, 'smt_solvers/QF_S/z3str3/': 0.11161136627197266, 'smt_solvers/QF_S/z3seq/': 0.10098695755004883, 'smt_solvers/QF_S/cvc4/': 2500}
;  score   = 7499.888388633728
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'timeout'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.prefixof var5 var3))(assert (< (str.len (str.replace var4 var3 "RG|7@]HD.M")) (str.indexof (str.replace var1 var5 var1) (str.replace var4 var0 var1) (str.len "Vi$9oT}4l?"))))(assert (str.suffixof (str.++ var1 var4) (str.replace var4 var3 var4)))(assert (str.prefixof (str.replace var4 var4 var4) (str.substr var5 var6 var7)))(assert (str.contains (str.replace var1 var2 var0) (str.substr var0 var11 var9)))(check-sat)