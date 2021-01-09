;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.0836641788482666, 'smt_solvers/QF_S/cvc4/': 0.1575942039489746, 'smt_solvers/QF_S/z3str3/': 0.09189581871032715, 'smt_solvers/QF_S/z3str3fed/': 0.06717157363891602}
;  score   = 0.06569838523864746
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (< (str.len var5) (str.len var5)))(assert (str.prefixof (str.substr var5 var11 var6) (str.replace var3 var3 var0)))(assert (>= var7 var7))(assert (str.suffixof (str.replace (str.at var5 8) (str.at var1 var11) (str.at var2 var9)) (str.substr var3 var6 var10)))(assert (str.contains (str.at var5 var9) (str.at var0 var6)))(check-sat)