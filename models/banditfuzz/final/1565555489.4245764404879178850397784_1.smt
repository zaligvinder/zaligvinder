;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.08206439018249512, 'smt_solvers/QF_S/z3seq/': 0.10367941856384277, 'smt_solvers/QF_S/cvc4/': 0.18213295936584473, 'smt_solvers/QF_S/z3str3/': 0.10283780097961426}
;  score   = 0.07845354080200195
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.prefixof (str.substr var1 var9 var9) (str.replace var2 var3 var4)))(assert (not (< (str.len var1) (str.indexof var3 var4 1))))(assert (str.suffixof (str.substr var3 var8 var5) (str.at var1 var8)))(assert (str.suffixof (str.replace var2 var2 var4) (str.at var3 var9)))(assert (< (str.len var2) (str.indexof (str.replace var2 var2 var4) (str.at var3 var5) (str.indexof var2 var0 var9))))(check-sat)