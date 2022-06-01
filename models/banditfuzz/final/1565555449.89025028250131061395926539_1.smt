;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.13595986366271973, 'smt_solvers/QF_S/cvc4/': 0.25301074981689453, 'smt_solvers/QF_S/z3str3fed/': 0.07961773872375488, 'smt_solvers/QF_S/z3seq/': 0.10105204582214355}
;  score   = 0.1170508861541748
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'sat', 'smt_solvers/QF_S/cvc4/': 'sat', 'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/z3seq/': 'sat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.contains var1 "y?r?Z51Vh+"))(assert (not var13))(assert (not (str.contains (str.replace var4 var2 var1) (str.at var0 var5))))(assert (not (< var9 var8)))(assert (str.contains (str.at var2 var5) (str.replace var4 var0 var1)))(check-sat)