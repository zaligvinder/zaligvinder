;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.09318089485168457, 'smt_solvers/QF_S/z3str3fed/': 0.07794380187988281, 'smt_solvers/QF_S/z3str3/': 0.09679961204528809, 'smt_solvers/QF_S/cvc4/': 0.18330669403076172}
;  score   = 0.08650708198547363
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.contains (str.replace var1 var5 var5) (str.at var5 var11)))(assert (str.in.re (str.replace var0 var5 var4) (re.* re.allchar)))(assert (str.prefixof var2 var1))(assert (str.contains (str.at var0 var6) (str.replace var5 var5 var5)))(assert (< (str.len var5) (str.indexof var4 var4 0)))(check-sat)