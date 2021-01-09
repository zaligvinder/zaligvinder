;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.1147007942199707, 'smt_solvers/QF_S/z3str3fed/': 0.09708929061889648, 'smt_solvers/QF_S/z3str3/': 0.18701744079589844, 'smt_solvers/QF_S/cvc4/': 0.5007328987121582}
;  score   = 0.31371545791625977
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (<= (str.len var1) (str.len (str.substr var1 var8 var5))))(assert (<= (str.len var3) (str.indexof var2 var4 var9)))(assert (str.in.re (str.at var1 1) (re.+ re.allchar)))(assert (str.contains (str.replace var1 var3 var2) (str.substr (str.substr var1 var8 var9) (str.indexof var3 var3 var5) (str.len var0))))(assert (str.prefixof (str.replace (str.at "HrP3iAAX3?" var9) (str.substr var1 var5 var7) (str.at "1\\nd#[ukRY" 7)) (str.replace var1 var1 "xV(.v?F},v")))(check-sat)