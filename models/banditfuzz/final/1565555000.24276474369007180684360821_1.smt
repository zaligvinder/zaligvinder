;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.09135055541992188, 'smt_solvers/QF_S/cvc4/': 0.3255589008331299, 'smt_solvers/QF_S/z3str3fed/': 0.2261953353881836, 'smt_solvers/QF_S/z3seq/': 0.2537658214569092}
;  score   = 0.0717930793762207
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (>= (str.len var2) (str.len var4)))(assert (str.in_re (str.substr var4 var6 var6) (re.+ re.allchar)))(assert (not (str.suffixof var4 var0)))(assert (str.prefixof (str.substr (str.at var4 var9) (str.len var2) (str.len "GOKKQ;.>,^")) (str.at var1 var6)))(assert (< (str.len var2) (str.indexof (str.substr var4 var7 var5) (str.at var1 var6) (str.indexof "Fc/+%>~L%Z" var1 var5))))(check-sat)