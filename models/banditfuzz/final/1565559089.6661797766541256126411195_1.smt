;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.06813287734985352, 'smt_solvers/QF_S/z3str3/': 0.08527565002441406, 'smt_solvers/QF_S/cvc4/': 0.19311761856079102, 'smt_solvers/QF_S/z3seq/': 0.08301115036010742}
;  score   = 0.10784196853637695
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.contains var3 var0))(assert (str.prefixof (str.substr var4 var7 var11) (str.substr (str.at var4 8) (str.len var4) (str.len var3))))(assert (not (> var9 var7)))(assert (not (>= (str.len var2) (str.len var2))))(assert (str.in_re (str.substr var5 var6 var6) (re.+ re.allchar)))(check-sat)