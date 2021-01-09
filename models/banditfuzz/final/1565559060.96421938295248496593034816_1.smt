;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.23566532135009766, 'smt_solvers/QF_S/z3seq/': 0.10516190528869629, 'smt_solvers/QF_S/z3str3fed/': 0.0760648250579834, 'smt_solvers/QF_S/z3str3/': 0.1132969856262207}
;  score   = 0.12236833572387695
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (< (str.indexof var4 var0 var10) (str.len "fylXf_tZ|C")))(assert (<= (str.len var3) (str.indexof (str.at var0 var10) (str.at var3 var8) (str.len "5mRiJ5nXkN"))))(assert (str.suffixof (str.at var0 var9) (str.substr var2 var7 var11)))(assert (not (str.in.re var0 re.allchar)))(assert (<= var7 var6))(check-sat)