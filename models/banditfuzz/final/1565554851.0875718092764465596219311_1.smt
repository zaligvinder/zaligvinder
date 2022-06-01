;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.09437751770019531, 'smt_solvers/QF_S/z3str3fed/': 0.0686337947845459, 'smt_solvers/QF_S/z3seq/': 0.0855567455291748, 'smt_solvers/QF_S/cvc4/': 0.17876219749450684}
;  score   = 0.08438467979431152
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (> (str.indexof var0 var3 var6) (str.len var4)))(assert (str.in_re var2 (re.+ re.allchar)))(assert (< (str.len var2) (str.indexof (str.substr ")!Gwr*7{%f" var8 var8) (str.substr var0 var8 var6) (str.indexof var4 var0 var6))))(assert (< var9 var6))(assert (<= (str.indexof var4 var2 var8) (str.indexof var0 var4 var7)))(check-sat)