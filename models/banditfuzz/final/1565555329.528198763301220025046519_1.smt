;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.12613797187805176, 'smt_solvers/QF_S/cvc4/': 0.36324620246887207, 'smt_solvers/QF_S/z3str3/': 0.30510401725769043, 'smt_solvers/QF_S/z3str3fed/': 0.11190581321716309}
;  score   = 0.05814218521118164
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.contains (str.replace var0 var0 var4) (str.replace var2 "KcG5y_7]uj" var2)))(assert (str.contains (str.at var2 var5) (str.replace (str.replace var3 var3 var0) (str.replace var2 var3 var4) (str.replace var0 var2 var0))))(assert (str.contains (str.substr (str.replace var0 var4 var2) (str.indexof var0 var2 var7) (str.indexof var2 var4 var5)) (str.replace var3 var2 var1)))(assert (< (str.len var0) (str.indexof var2 var4 var6)))(assert (str.in.re var1 re.allchar))(check-sat)