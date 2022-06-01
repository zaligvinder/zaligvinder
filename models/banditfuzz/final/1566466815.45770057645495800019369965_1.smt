;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.3871781826019287, 'smt_solvers/QF_S/z3str3fed/': 0.4875006675720215, 'smt_solvers/QF_S/cvc4/': 0.9221043586730957, 'smt_solvers/QF_S/z3seq/': 0.5058341026306152}
;  score   = 0.41627025604248047
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.prefixof (str.substr var1 var6 7) (str.replace var4 var5 var4)))(assert (str.suffixof var2 var5))(assert (> var7 var7))(assert (>= (str.len "cU%HgS:O)?") (str.indexof var1 "UjXza5Xb+U" var6)))(assert (str.suffixof (str.at var2 var6) (str.replace var0 var5 var2)))(assert (str.suffixof (str.replace var5 var5 var0) (str.at var2 var9)))(assert (not (not (str.in_re var0 re.allchar))))(check-sat)