;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.08784031867980957, 'smt_solvers/QF_S/z3seq/': 0.1039118766784668, 'smt_solvers/QF_S/cvc4/': 0.1861891746520996, 'smt_solvers/QF_S/z3str3/': 0.11285114288330078}
;  score   = 0.07333803176879883
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.suffixof (str.at var1 var10) (str.at (str.at var5 var6) (str.indexof var4 var4 (str.len var1)))))(assert (str.prefixof (str.at var4 2) (str.at var5 var7)))(assert (< var9 var11))(assert (str.contains var2 var1))(assert (< (str.len var4) (str.indexof var3 var3 var10)))(check-sat)