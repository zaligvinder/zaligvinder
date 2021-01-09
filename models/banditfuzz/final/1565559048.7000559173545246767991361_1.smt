;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.19501471519470215, 'smt_solvers/QF_S/cvc4/': 3.190002202987671, 'smt_solvers/QF_S/z3str3/': 0.21756625175476074, 'smt_solvers/QF_S/z3str3fed/': 0.09674787521362305}
;  score   = 2.97243595123291
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/cvc4/': 'sat', 'smt_solvers/QF_S/z3str3/': 'sat', 'smt_solvers/QF_S/z3str3fed/': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.contains var1 var1))(assert (str.contains (str.replace var0 var1 var4) (str.replace "}Si1GXg(lX" var4 var0)))(assert (> (str.len var5) (str.len var3)))(assert (> (str.len var0) (str.len var1)))(assert (> var8 var11))(check-sat)