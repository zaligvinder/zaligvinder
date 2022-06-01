;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 2500, 'smt_solvers/QF_S/cvc4/': 2500, 'smt_solvers/QF_S/z3seq/': 2500, 'smt_solvers/QF_S/z3str3/': 1436.3951947689056}
;  score   = 0.0
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'crash', 'smt_solvers/QF_S/cvc4/': 'timeout', 'smt_solvers/QF_S/z3seq/': 'timeout', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.contains (str.substr var5 var11 var7) (str.replace var4 var5 var1)))(assert (str.in_re (str.at var4 8) (re.+ re.allchar)))(assert (str.contains (str.at (str.replace var2 "+@\\Z2r9%D5" ">O+m3YPQ.t") (str.indexof var1 var1 (str.indexof var1 var1 var7))) (str.at var0 var11)))(assert (<= (str.len "ej-|Rw$v:'") (str.indexof var4 var5 var6)))(assert (str.prefixof (str.at var5 var10) (str.at var5 var8)))(assert (>= var7 0))(assert (<= var11 var10))(check-sat)