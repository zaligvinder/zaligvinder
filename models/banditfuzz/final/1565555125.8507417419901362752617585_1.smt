;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.07674312591552734, 'smt_solvers/QF_S/z3str3fed/': 0.060524940490722656, 'smt_solvers/QF_S/z3str3/': 0.07594442367553711, 'smt_solvers/QF_S/cvc4/': 0.05735468864440918}
;  score   = -0.019388437271118164
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (> var9 var6))(assert (< var9 var9))(assert (str.contains (str.replace (str.replace var3 var4 var3) (str.at "gqJ2oyoqX""" 1) (str.replace var0 "VA.JnoW1Rf" var2)) (str.replace (str.at var3 (str.indexof var0 var4 var5)) (str.at var2 0) (str.at var1 var5))))(assert (> (str.len (str.replace var2 var2 var2)) (str.indexof "_5+\\fY(/eJ" var0 var8)))(assert (>= (str.len var0) (str.len var1)))(check-sat)