;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.08877921104431152, 'smt_solvers/QF_S/cvc4/': 0.5517659187316895, 'smt_solvers/QF_S/z3seq/': 0.09833192825317383, 'smt_solvers/QF_S/z3str3/': 0.1274428367614746}
;  score   = 0.42432308197021484
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (<= (str.len var4) (str.indexof var0 var2 var9)))(assert (> (str.indexof (str.substr "7QnAiQ/E5M" var7 var8) (str.at var4 var9) (str.indexof var2 var2 var9)) (str.len var1)))(assert (> (str.len (str.at var4 var9)) (str.indexof var1 var2 var9)))(assert (str.prefixof var1 "rCu|&=Os^k"))(assert (str.prefixof (str.replace var0 var3 "A95D3+/Bsw") (str.substr var3 var5 var9)))(check-sat)