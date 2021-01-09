;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.09290504455566406, 'smt_solvers/QF_S/z3str3fed/': 0.06730270385742188, 'smt_solvers/QF_S/cvc4/': 0.3633244037628174, 'smt_solvers/QF_S/z3seq/': 0.08294916152954102}
;  score   = 0.2704193592071533
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.prefixof (str.replace (str.replace var3 var3 var4) (str.at var2 var8) (str.replace var1 var2 var1)) (str.at (str.substr var1 var5 var5) (str.len var2))))(assert (str.contains (str.at var2 var8) (str.at var3 var9)))(assert (str.suffixof (str.replace var0 var1 var4) (str.substr var0 var7 var7)))(assert (str.prefixof (str.replace "#$gkjV?S+$" var3 "b/g&*14nKh") (str.at var4 var6)))(assert (str.in.re (str.at (str.at var4 var6) (str.len var3)) (re.+ re.allchar)))(check-sat)