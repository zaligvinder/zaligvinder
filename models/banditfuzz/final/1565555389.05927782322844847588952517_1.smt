;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.2112729549407959, 'smt_solvers/QF_S/z3str3fed/': 0.09096384048461914, 'smt_solvers/QF_S/z3str3/': 0.12967419624328613, 'smt_solvers/QF_S/z3seq/': 0.11264276504516602}
;  score   = 0.08159875869750977
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.suffixof var1 var3))(assert (<= (str.len var1) (str.indexof var1 var3 var6)))(assert (str.contains (str.at var0 var6) (str.at var0 var5)))(assert (not (<= (str.indexof var3 var3 var7) (str.len var3))))(assert (str.in.re (str.at (str.substr var0 var8 var7) (str.indexof var4 var1 var7)) (re.* (re.* re.allchar))))(check-sat)