;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 2500, 'smt_solvers/QF_S/z3seq/': 0.36582064628601074, 'smt_solvers/QF_S/z3str3fed/': 1.165785312652588, 'smt_solvers/QF_S/z3str3/': 0.15527606010437012}
;  score   = 7498.834214687347
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'timeout', 'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/z3str3/': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.in.re (str.substr var5 9 var10) (re.+ re.allchar)))(assert (str.prefixof var0 var5))(assert (<= var7 var11))(assert (str.contains (str.substr var0 var6 var9) (str.replace (str.replace var3 var5 var5) (str.at "YfA<}\\qJA^" var11) (str.at var1 var6))))(assert (>= (str.len "^QZEVxmSIu") (str.to.int var5)))(check-sat)