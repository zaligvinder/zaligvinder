;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.1930232048034668, 'smt_solvers/QF_S/z3seq/': 0.0877532958984375, 'smt_solvers/QF_S/z3str3fed/': 0.07256793975830078, 'smt_solvers/QF_S/z3str3/': 0.1122288703918457}
;  score   = 0.0807943344116211
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'sat', 'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/z3str3/': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.contains var1 var3))(assert (str.suffixof var5 var0))(assert (not (> var7 9)))(assert (str.prefixof var4 "DHK(f=[_Nj"))(assert (< var6 var8))(check-sat)