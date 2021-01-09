;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.08193683624267578, 'smt_solvers/QF_S/z3str3fed/': 0.0685582160949707, 'smt_solvers/QF_S/z3str3/': 0.1275177001953125, 'smt_solvers/QF_S/cvc4/': 0.14871430397033691}
;  score   = 0.021196603775024414
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/z3str3/': 'sat', 'smt_solvers/QF_S/cvc4/': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (< (str.indexof var3 var0 7) (str.len var1)))(assert (> (str.len var2) (str.len var1)))(assert (<= var5 var9))(assert (str.suffixof var1 var1))(assert (str.contains (str.at var2 (str.len (str.substr var3 var5 var9))) (str.at var1 1)))(check-sat)