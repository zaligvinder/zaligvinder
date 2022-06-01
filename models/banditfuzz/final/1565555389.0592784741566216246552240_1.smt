;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.1664881706237793, 'smt_solvers/QF_S/z3str3/': 1.4874544143676758, 'smt_solvers/QF_S/z3str3fed/': 0.2407536506652832, 'smt_solvers/QF_S/cvc4/': 2500}
;  score   = 7498.512545585632
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/z3str3/': 'sat', 'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/cvc4/': 'timeout'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (<= (str.len var4) (str.len var0)))(assert (< 10 var7))(assert (str.in_re (str.replace var1 var2 var2) (re.* (re.+ re.allchar))))(assert (<= var9 var5))(assert (< (str.indexof var2 var0 var7) (str.indexof var1 var2 8)))(check-sat)