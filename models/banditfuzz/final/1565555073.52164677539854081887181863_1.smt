;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.07692146301269531, 'smt_solvers/QF_S/z3str3fed/': 0.06021595001220703, 'smt_solvers/QF_S/cvc4/': 0.05727648735046387, 'smt_solvers/QF_S/z3seq/': 0.0779726505279541}
;  score   = -0.020696163177490234
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (>= (str.len var2) (str.indexof var3 var2 var9)))(assert (>= var5 var8))(assert (< (str.len var4) (str.len var4)))(assert (> (str.len (str.substr var1 var9 var9)) (str.len (str.at var4 6))))(assert (<= (str.len var1) (str.indexof var4 var1 var6)))(check-sat)