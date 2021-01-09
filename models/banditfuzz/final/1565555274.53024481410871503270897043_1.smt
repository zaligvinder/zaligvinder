;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.09733414649963379, 'smt_solvers/QF_S/z3str3fed/': 0.07882165908813477, 'smt_solvers/QF_S/z3seq/': 0.09355545043945312, 'smt_solvers/QF_S/cvc4/': 1.4935250282287598}
;  score   = 1.396190881729126
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (<= (str.len var4) (str.indexof (str.at var3 var6) (str.replace var0 var1 var2) (str.indexof "}@{!vk#+2p" var1 var7))))(assert (not var12))(assert (<= (str.len var4) (str.indexof var1 "\\.$vAu#>^L" var8)))(assert (str.prefixof (str.replace var3 var2 var1) (str.replace var2 var4 var1)))(assert (not var14))(check-sat)