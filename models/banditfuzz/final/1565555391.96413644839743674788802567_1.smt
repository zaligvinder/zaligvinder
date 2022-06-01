;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.11658310890197754, 'smt_solvers/QF_S/z3str3fed/': 0.08191299438476562, 'smt_solvers/QF_S/z3seq/': 0.09764432907104492, 'smt_solvers/QF_S/cvc4/': 0.31833815574645996}
;  score   = 0.20175504684448242
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.contains (str.at (str.at "8?&43_dDLD" var9) (str.len var0)) (str.substr (str.at var4 var5) (str.len var3) (str.indexof "b1p!p>o?]J" var4 var9))))(assert (str.prefixof (str.substr var1 var9 var9) (str.substr var4 var9 10)))(assert (> (str.indexof var0 var2 var7) (str.len "&YHhtwp+E?")))(assert (str.prefixof (str.replace var4 var1 var0) (str.at var0 var8)))(assert (< (str.indexof (str.at var0 var6) (str.at var2 var7) (str.len var1)) (str.indexof var4 var1 var5)))(check-sat)