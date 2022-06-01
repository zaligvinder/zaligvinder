;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.13608932495117188, 'smt_solvers/QF_S/z3str3/': 0.0808112621307373, 'smt_solvers/QF_S/z3seq/': 0.07905125617980957, 'smt_solvers/QF_S/z3str3fed/': 0.06182503700256348}
;  score   = 0.05527806282043457
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (< (str.len (str.at var1 var5)) (str.indexof (str.at var4 1) (str.replace var4 var1 var4) (str.len var3))))(assert (str.contains (str.substr var4 var7 var8) (str.at var3 var9)))(assert (> (str.len var1) (str.indexof var2 var3 var9)))(assert (> (str.indexof var3 "*6$`y<kJRP" 5) (str.len (str.substr var0 var9 var8))))(assert (str.suffixof (str.substr var0 var8 2) (str.substr var3 var5 var7)))(check-sat)