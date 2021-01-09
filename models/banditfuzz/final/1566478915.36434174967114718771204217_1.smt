;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.0845189094543457, 'smt_solvers/QF_S/cvc4/': 0.14144444465637207, 'smt_solvers/QF_S/z3seq/': 0.08148598670959473, 'smt_solvers/QF_S/z3str3fed/': 0.06548571586608887}
;  score   = 0.05692553520202637
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.contains (str.substr var0 var7 var9) (str.replace var0 var5 "05.:C=<M`.")))(assert (< var8 var8))(assert (str.contains var1 var2))(assert (str.prefixof var3 var4))(assert (str.contains var3 var5))(assert (<= var9 var6))(assert (str.in.re (str.at var4 var6) (re.inter re.allchar re.allchar)))(check-sat)