;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.13204503059387207, 'smt_solvers/QF_S/z3seq/': 0.11392593383789062, 'smt_solvers/QF_S/cvc4/': 0.1918315887451172, 'smt_solvers/QF_S/z3str3fed/': 0.10249900817871094}
;  score   = 0.05978655815124512
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'sat', 'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/cvc4/': 'sat', 'smt_solvers/QF_S/z3str3fed/': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.contains var3 var1))(assert (> var7 5))(assert (>= var7 var6))(assert (>= (str.len var0) (str.len var2)))(assert (str.in.re (str.at (str.substr var4 var9 var9) (str.len var3)) (re.* re.allchar)))(check-sat)