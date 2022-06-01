;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.338789701461792, 'smt_solvers/QF_S/z3seq/': 0.10951399803161621, 'smt_solvers/QF_S/z3str3/': 0.11567854881286621, 'smt_solvers/QF_S/z3str3fed/': 0.1013498306274414}
;  score   = 0.22311115264892578
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (>= var6 var6))(assert (> (str.len var2) (str.indexof (str.substr var2 var6 var9) (str.substr "14m#wgd#""T" var7 var5) (str.len var0))))(assert (>= (str.indexof (str.at var4 8) (str.at var3 var5) (str.indexof var2 var4 var6)) (str.len (str.replace var3 var3 var3))))(assert (>= (str.indexof (str.replace var3 var3 var4) (str.replace var4 var0 var2) (str.indexof var1 var3 var5)) (str.len var2)))(assert (str.in_re var2 re.allchar))(check-sat)