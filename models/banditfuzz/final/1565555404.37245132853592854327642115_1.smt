;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.17382264137268066, 'smt_solvers/QF_S/z3seq/': 0.10205268859863281, 'smt_solvers/QF_S/z3str3/': 0.10077595710754395, 'smt_solvers/QF_S/z3str3fed/': 0.08587384223937988}
;  score   = 0.07176995277404785
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (> 8 var8))(assert (str.prefixof (str.substr var4 7 var7) (str.at var3 var5)))(assert (str.in_re (str.substr (str.at var4 1) (str.indexof var2 var3 var5) (str.indexof var4 var3 var6)) (re.+ re.allchar)))(assert (< (str.len var4) (str.indexof (str.at var4 var8) (str.at "AxCw*IF9j<" var6) (str.indexof "|6S?9fW[$7" var2 var8))))(assert (>= var7 var7))(check-sat)