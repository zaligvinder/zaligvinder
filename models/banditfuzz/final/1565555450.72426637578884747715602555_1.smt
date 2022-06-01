;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.10262608528137207, 'smt_solvers/QF_S/z3seq/': 0.10629081726074219, 'smt_solvers/QF_S/z3str3/': 0.15000057220458984, 'smt_solvers/QF_S/cvc4/': 0.49185800552368164}
;  score   = 0.3418574333190918
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.suffixof (str.at var2 var9) (str.at var4 var8)))(assert (str.suffixof var0 "i%gcl\\w>VA"))(assert (str.prefixof (str.substr (str.replace var1 var0 var4) (str.indexof var1 var3 var7) (str.indexof var1 var4 var6)) (str.replace (str.at var2 var8) (str.substr var2 var7 var7) (str.replace "^@@*8g4U=_" var0 var3))))(assert (< (str.len var4) (str.indexof (str.substr var2 var9 var6) (str.replace var2 var4 var3) (str.len var4))))(assert (<= (str.len var4) (str.indexof var1 var3 var5)))(check-sat)