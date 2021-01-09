;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.1266918182373047, 'smt_solvers/QF_S/cvc4/': 58.77904558181763, 'smt_solvers/QF_S/z3seq/': 0.10746407508850098, 'smt_solvers/QF_S/z3str3fed/': 0.09612536430358887}
;  score   = 58.65235376358032
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.prefixof (str.at var1 var6) (str.substr var3 var6 4)))(assert (str.in.re (str.replace var4 var3 "m|M=0:hpLl") (re.+ re.allchar)))(assert (< (str.len var4) (str.indexof (str.replace var0 var1 var1) (str.at "mKxc?78Qpv" var7) (str.indexof var0 "l8?Mqj[@\\W" var5))))(assert (> (str.indexof var2 var2 7) (str.indexof var0 var3 var6)))(assert (str.suffixof var0 var3))(check-sat)