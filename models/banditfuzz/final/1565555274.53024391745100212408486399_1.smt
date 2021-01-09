;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.07621455192565918, 'smt_solvers/QF_S/z3seq/': 0.0926213264465332, 'smt_solvers/QF_S/cvc4/': 0.19477367401123047, 'smt_solvers/QF_S/z3str3/': 0.10736417770385742}
;  score   = 0.08740949630737305
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (< (str.len var0) (str.len (str.replace var2 var3 var4))))(assert (str.suffixof (str.substr var3 var8 7) (str.replace var2 var4 var2)))(assert (<= var8 var6))(assert (> (str.indexof var2 var2 var9) (str.len (str.replace var1 "cGYlhU6s)_" "%w=.lKKyzV"))))(assert (not (str.suffixof var1 var4)))(check-sat)