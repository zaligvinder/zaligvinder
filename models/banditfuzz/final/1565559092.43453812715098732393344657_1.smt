;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.07897138595581055, 'smt_solvers/QF_S/z3str3/': 0.09679770469665527, 'smt_solvers/QF_S/cvc4/': 0.15178203582763672, 'smt_solvers/QF_S/z3seq/': 0.08633017539978027}
;  score   = 0.054984331130981445
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.contains (str.at (str.substr "/J<6.O~1^{" var7 var6) (str.indexof "iVi^#l~[hY" var2 var11)) (str.substr (str.substr var2 var9 5) (str.len var4) (str.len var3))))(assert (not (> var7 var7)))(assert (> (str.indexof var3 var4 var7) (str.len var5)))(assert (str.contains (str.replace var2 var0 var3) (str.substr (str.substr var4 var10 var7) (str.len var1) (str.indexof var0 var3 var6))))(assert (< var8 var8))(check-sat)