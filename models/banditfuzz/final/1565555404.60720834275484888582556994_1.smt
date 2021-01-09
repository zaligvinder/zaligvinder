;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.2191028594970703, 'smt_solvers/QF_S/z3seq/': 0.1400740146636963, 'smt_solvers/QF_S/z3str3fed/': 0.13793015480041504, 'smt_solvers/QF_S/z3str3/': 0.12799572944641113}
;  score   = 0.07902884483337402
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'sat', 'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/z3str3/': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (< (str.len (str.replace var4 var2 var3)) (str.len "E""Vz>:GRUM")))(assert (str.in.re var3 re.allchar))(assert (str.in.re (str.substr var0 var9 var5) (re.* re.allchar)))(assert (>= (str.len var2) (str.len var3)))(assert (str.suffixof (str.replace var3 var4 var2) (str.at "]#^l[L)N)+" var5)))(check-sat)