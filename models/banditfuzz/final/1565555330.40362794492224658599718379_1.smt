;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.11767983436584473, 'smt_solvers/QF_S/z3str3fed/': 0.07914257049560547, 'smt_solvers/QF_S/z3seq/': 0.09664034843444824, 'smt_solvers/QF_S/cvc4/': 0.6929619312286377}
;  score   = 0.575282096862793
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.contains (str.at (str.at var1 var7) (str.len var1)) (str.at var4 var6)))(assert (str.prefixof var4 var3))(assert (> var6 7))(assert (>= (str.indexof (str.substr var0 var9 var5) (str.replace "Hi8!=NYX:k" var4 var3) (str.len var2)) (str.len (str.substr ")v^x~;%71*" var7 var5))))(assert (str.suffixof (str.replace var0 "1t&|vQtKNZ" ":os`LH-+E:") (str.substr (str.substr var3 var8 var8) (str.len var1) (str.indexof var0 var3 var5))))(check-sat)