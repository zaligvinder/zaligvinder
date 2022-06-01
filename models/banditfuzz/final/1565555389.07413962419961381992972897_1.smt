;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.08419394493103027, 'smt_solvers/QF_S/cvc4/': 0.16451501846313477, 'smt_solvers/QF_S/z3str3fed/': 0.06025576591491699, 'smt_solvers/QF_S/z3seq/': 0.07708096504211426}
;  score   = 0.08032107353210449
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.suffixof var0 var0))(assert (not true))(assert (>= var9 var9))(assert (> var8 var7))(assert (str.in_re (str.substr var0 var6 9) (re.+ re.allchar)))(check-sat)