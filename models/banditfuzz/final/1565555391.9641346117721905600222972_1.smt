;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.1919262409210205, 'smt_solvers/QF_S/z3seq/': 0.09701824188232422, 'smt_solvers/QF_S/z3str3fed/': 0.07934999465942383, 'smt_solvers/QF_S/z3str3/': 0.1116487979888916}
;  score   = 0.0802774429321289
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (not (>= (str.len var0) (str.len var4))))(assert (< (str.len var1) (str.indexof var0 var0 var6)))(assert (str.suffixof (str.replace "0&yztB$A-r" "Bw{_R]LZ)R" var1) (str.substr var3 var9 1)))(assert (str.contains (str.substr var3 var6 var7) (str.substr var1 var8 4)))(assert (not var14))(check-sat)