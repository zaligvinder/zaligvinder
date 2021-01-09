;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.0975799560546875, 'smt_solvers/QF_S/cvc4/': 0.4244236946105957, 'smt_solvers/QF_S/z3seq/': 0.11570096015930176, 'smt_solvers/QF_S/z3str3/': 0.10224604606628418}
;  score   = 0.30872273445129395
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (< var10 var9))(assert (> (str.indexof (str.substr var5 var7 var8) (str.replace var4 var3 var5) (str.indexof var1 var2 var8)) (str.len (str.replace var4 var1 var3))))(assert (str.in.re (str.replace var1 var0 var5) (re.++ re.allchar re.allchar)))(assert (str.in.re (str.at var4 (str.len var0)) (re.inter re.allchar re.allchar)))(assert (not var12))(check-sat)