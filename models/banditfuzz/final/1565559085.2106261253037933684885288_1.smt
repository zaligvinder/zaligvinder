;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.06936192512512207, 'smt_solvers/QF_S/z3str3/': 0.08939242362976074, 'smt_solvers/QF_S/z3seq/': 0.08428144454956055, 'smt_solvers/QF_S/cvc4/': 2500}
;  score   = 7499.91060757637
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'timeout'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (not (str.in.re var1 re.allchar)))(assert (> (str.indexof var5 var4 var10) (str.len "%/B_NE4-<p")))(assert (str.contains (str.replace var4 var3 ">""xBa[3LPG") (str.at "?-%$)GmECp" 6)))(assert (< (str.to.int var0) (str.indexof (str.at var3 var10) (str.substr var1 (str.len var0) (str.indexof var4 var1 var10)) (str.len "+-nfhMQJ*:"))))(assert (not var13))(check-sat)