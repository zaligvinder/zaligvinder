;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.40981602668762207, 'smt_solvers/QF_S/z3seq/': 0.17726850509643555, 'smt_solvers/QF_S/z3str3/': 0.19475841522216797, 'smt_solvers/QF_S/z3str3fed/': 0.1703181266784668}
;  score   = 0.2150576114654541
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'sat', 'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/z3str3/': 'sat', 'smt_solvers/QF_S/z3str3fed/': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.contains "g,KL9<D?@o" var1))(assert (str.suffixof (str.at "=w_^aS/Fc(" var8) (str.substr "mH`(&!6\\Aa" var10 var10)))(assert (str.in.re (str.at var1 2) (re.+ re.allchar)))(assert (<= (str.indexof var0 var2 var10) (str.indexof var1 var4 var10)))(assert (> var7 var8))(check-sat)