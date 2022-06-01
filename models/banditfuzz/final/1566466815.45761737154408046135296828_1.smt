;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.14200472831726074, 'smt_solvers/QF_S/z3str3fed/': 0.06501889228820801, 'smt_solvers/QF_S/z3str3/': 0.08273887634277344, 'smt_solvers/QF_S/z3seq/': 0.08237719535827637}
;  score   = 0.059265851974487305
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.suffixof var4 var2))(assert (> (str.indexof var2 var0 var8) (str.indexof var5 var0 var7)))(assert (> (str.len var5) (str.len var1)))(assert (str.in_re (str.replace (str.at var1 var7) (str.substr var3 var7 var8) (str.at ";^p1TIgovI" var11)) (re.* (re.+ re.allchar))))(assert (>= var6 10))(assert (< var7 var7))(assert (< (str.len "fGVrg]/Ln&") (str.indexof var5 var5 var8)))(check-sat)