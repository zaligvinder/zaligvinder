;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.06583833694458008, 'smt_solvers/QF_S/cvc4/': 1.0683786869049072, 'smt_solvers/QF_S/z3seq/': 0.08295774459838867, 'smt_solvers/QF_S/z3str3/': 0.08408737182617188}
;  score   = 0.9842913150787354
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.suffixof (str.replace "I[]Tk~iR~M" var0 "\\=FR|UuABp") (str.at var0 var6)))(assert (str.contains "'Qd*Kx]#!{" var0))(assert (not (str.contains var1 var0)))(assert (< (str.len (str.substr var2 var5 var8)) (str.indexof (str.substr var1 9 var7) (str.replace var3 var1 var0) (str.indexof var1 "!oV\\$,7q7m" var7))))(assert (<= (str.len var1) (str.len var0)))(check-sat)