;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.41860175132751465, 'smt_solvers/QF_S/z3str3/': 0.16928410530090332, 'smt_solvers/QF_S/z3seq/': 0.10892367362976074, 'smt_solvers/QF_S/z3str3fed/': 0.09327268600463867}
;  score   = 0.24931764602661133
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.suffixof var3 var2))(assert (str.in_re (str.at var3 3) (re.+ re.allchar)))(assert (str.in_re var3 re.allchar))(assert (str.prefixof (str.replace (str.replace var1 var2 var0) (str.at var1 var7) (str.substr var3 var8 var8)) (str.substr (str.replace var1 var2 var1) (str.indexof var3 var2 var8) (str.len var0))))(assert (str.prefixof (str.replace var3 var2 var3) (str.substr var1 var7 var8)))(check-sat)