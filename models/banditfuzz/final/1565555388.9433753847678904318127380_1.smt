;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.11263322830200195, 'smt_solvers/QF_S/z3str3/': 0.12176227569580078, 'smt_solvers/QF_S/z3str3fed/': 0.09364557266235352, 'smt_solvers/QF_S/cvc4/': 0.24423885345458984}
;  score   = 0.12247657775878906
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.prefixof (str.replace var1 var2 var3) (str.at (str.substr var3 var7 var6) (str.indexof var4 var2 var5))))(assert (str.in.re var1 re.allchar))(assert (>= (str.indexof var1 var1 var9) (str.len "'Gl'm/C3v(")))(assert (> (str.len (str.at var1 var9)) (str.indexof (str.at var1 10) (str.substr "6>^A9];(lN" var8 var9) (str.indexof var4 "g9hZpoz'<A" var6))))(assert (>= (str.indexof "}(AhoWnks3" var3 var6) (str.indexof var4 var1 var7)))(check-sat)