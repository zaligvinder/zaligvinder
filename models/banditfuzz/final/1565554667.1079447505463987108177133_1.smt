;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.14565014839172363, 'smt_solvers/QF_S/z3str3fed/': 0.14940786361694336, 'smt_solvers/QF_S/z3seq/': 0.0985558032989502, 'smt_solvers/QF_S/z3str3/': 0.1282508373260498}
;  score   = -0.0037577152252197266
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (> var9 var9))(assert (str.contains (str.at var1 var7) (str.at var1 var5)))(assert (not (str.contains (str.at var1 10) (str.substr var4 var9 var9))))(assert (>= (str.indexof var3 var0 var6) (str.indexof (str.substr var2 var9 var8) (str.substr var2 2 1) (str.len var2))))(assert (str.in_re (str.at (str.substr var0 var6 var5) (str.len var0)) (re.* re.allchar)))(check-sat)