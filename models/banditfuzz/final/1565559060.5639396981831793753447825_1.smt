;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.07540202140808105, 'smt_solvers/QF_S/cvc4/': 0.47542309761047363, 'smt_solvers/QF_S/z3str3/': 0.10868954658508301, 'smt_solvers/QF_S/z3seq/': 0.08648848533630371}
;  score   = 0.3667335510253906
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (> (str.len var0) (str.len var1)))(assert (<= (str.indexof var3 var5 var8) (str.len (str.substr var3 (str.len var0) (str.indexof (str.replace var1 var5 var5) (str.at var0 var10) (str.indexof var4 var3 var8))))))(assert (str.prefixof var2 var3))(assert (> (str.indexof (str.replace var2 var5 var1) (str.substr "$oX9x?pTRM" var6 var8) (str.len var5)) (str.len var0)))(assert (str.in.re var3 re.allchar))(check-sat)