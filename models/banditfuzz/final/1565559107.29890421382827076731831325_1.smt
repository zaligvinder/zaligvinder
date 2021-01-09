;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.11140298843383789, 'smt_solvers/QF_S/z3seq/': 0.11151885986328125, 'smt_solvers/QF_S/z3str3fed/': 0.08525609970092773, 'smt_solvers/QF_S/cvc4/': 0.2698235511779785}
;  score   = 0.15830469131469727
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (<= (str.len var3) (str.len (str.at var5 var6))))(assert (str.contains var4 var2))(assert (<= (str.len var3) (str.indexof (str.substr var0 var10 2) (str.replace var1 var5 "5gV{6yFJZn") (str.indexof var2 var2 var11))))(assert (< (str.indexof var0 var5 var7) (str.indexof var4 var1 var6)))(assert (<= (str.len var0) (str.indexof (str.substr var3 var8 5) (str.replace var1 var1 var2) (str.len var5))))(check-sat)