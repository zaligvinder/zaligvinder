;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.18004488945007324, 'smt_solvers/QF_S/z3seq/': 0.19843435287475586, 'smt_solvers/QF_S/cvc4/': 9.502265930175781, 'smt_solvers/QF_S/z3str3/': 0.4002492427825928}
;  score   = 9.102016687393188
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/cvc4/': 'sat', 'smt_solvers/QF_S/z3str3/': 'sat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (> (str.indexof "=g)izn""fec" var0 0) (str.indexof var3 var3 (str.indexof (str.replace var2 var0 var2) (str.replace var4 var1 var4) (str.len var2)))))(assert (str.prefixof (str.replace "[u\\s.7iO[d" var1 var3) (str.replace var4 var0 var3)))(assert (str.prefixof var2 var0))(assert (str.in_re var1 re.allchar))(assert (str.contains var1 var4))(check-sat)