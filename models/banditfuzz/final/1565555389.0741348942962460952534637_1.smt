;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.07075047492980957, 'smt_solvers/QF_S/z3seq/': 0.0802469253540039, 'smt_solvers/QF_S/cvc4/': 0.16597366333007812, 'smt_solvers/QF_S/z3str3/': 0.08788347244262695}
;  score   = 0.07809019088745117
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (> var5 6))(assert (str.contains var2 "1wKA?|l[O'"))(assert (< (str.len var3) (str.len var0)))(assert (< (str.len (str.replace "&%{Habf|~0" var2 var3)) (str.len (str.at var3 var7))))(assert (str.in.re var4 re.allchar))(check-sat)