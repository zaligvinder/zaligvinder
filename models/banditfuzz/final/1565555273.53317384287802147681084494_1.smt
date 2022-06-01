;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.15744972229003906, 'smt_solvers/QF_S/z3str3fed/': 0.07090210914611816, 'smt_solvers/QF_S/z3str3/': 0.09547638893127441, 'smt_solvers/QF_S/z3seq/': 0.08881092071533203}
;  score   = 0.06197333335876465
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (< (str.len var3) (str.indexof var0 var3 7)))(assert (>= (str.indexof (str.at var2 var9) (str.replace var0 var1 var1) (str.len var3)) (str.len (str.replace "Vns8x*xx[t" var1 "<E#e!bw/?J"))))(assert (str.contains (str.substr var0 var8 var7) (str.substr var3 var7 var6)))(assert (> (str.indexof var2 "xZ1OW%I1yA" 3) (str.indexof var3 var4 var5)))(assert (str.suffixof (str.at var3 var7) (str.substr var2 var6 var7)))(check-sat)