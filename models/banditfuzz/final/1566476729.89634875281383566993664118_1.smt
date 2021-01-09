;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.09381842613220215, 'smt_solvers/QF_S/z3str3fed/': 0.12432074546813965, 'smt_solvers/QF_S/z3seq/': 0.15670132637023926, 'smt_solvers/QF_S/cvc4/': 0.26128435134887695}
;  score   = 0.1045830249786377
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/cvc4/': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (<= var6 var11))(assert (not var14))(assert (str.suffixof var2 var5))(assert (str.in.re var2 re.allchar))(assert (< (str.len var4) (str.indexof (str.at var5 var7) (str.at var5 var9) (str.len var3))))(assert (not var13))(assert (str.prefixof (str.substr var2 var6 8) (str.replace (str.substr var1 var11 var11) (str.replace var0 var4 var2) (str.replace var3 var1 var1))))(check-sat)