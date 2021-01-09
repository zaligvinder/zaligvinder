;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.08405113220214844, 'smt_solvers/QF_S/cvc4/': 0.15845775604248047, 'smt_solvers/QF_S/z3str3fed/': 0.06783175468444824, 'smt_solvers/QF_S/z3str3/': 0.09158825874328613}
;  score   = 0.06686949729919434
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.contains (str.replace var3 var4 var4) (str.substr var3 var5 var8)))(assert (str.suffixof (str.at (str.substr var3 7 var6) (str.len var4)) (str.substr (str.substr var3 var9 var9) (str.len var1) (str.indexof ".3E:eBY0%n" var4 var9))))(assert (not (str.in.re (str.substr var1 var6 var7) (re.* re.allchar))))(assert (< (str.len (str.replace var3 var3 var1)) (str.indexof (str.replace var3 var4 var2) (str.replace var4 var4 var4) (str.len var4))))(assert (not (str.contains var0 var4)))(check-sat)