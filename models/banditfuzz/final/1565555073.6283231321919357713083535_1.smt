;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.5173454284667969, 'smt_solvers/QF_S/cvc4/': 0.058717966079711914, 'smt_solvers/QF_S/z3str3/': 284.4378864765167, 'smt_solvers/QF_S/z3str3fed/': 0.24228620529174805}
;  score   = -284.379168510437
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/cvc4/': 'sat', 'smt_solvers/QF_S/z3str3/': 'sat', 'smt_solvers/QF_S/z3str3fed/': 'sat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (> var5 var7))(assert (> var9 4))(assert (str.contains var2 var1))(assert (str.in_re (str.at var4 var8) (re.* re.allchar)))(assert (> (str.len (str.substr var3 var7 var8)) (str.indexof (str.replace var0 var1 var0) (str.replace var1 var3 "Gnn""W7NHX|") (str.len var4))))(check-sat)