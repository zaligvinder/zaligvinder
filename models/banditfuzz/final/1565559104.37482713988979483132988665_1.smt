;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.09327387809753418, 'smt_solvers/QF_S/z3str3/': 0.1290895938873291, 'smt_solvers/QF_S/cvc4/': 0.3445553779602051, 'smt_solvers/QF_S/z3seq/': 0.11353278160095215}
;  score   = 0.21546578407287598
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (< (str.indexof (str.at "Pr?q1u6gG8" var8) (str.at "Pr?q1u6gG8" var8) (str.indexof var5 var0 var9)) (str.indexof var5 "@}pA9::Wul" var9)))(assert (str.suffixof (str.substr var0 10 10) (str.at var5 var10)))(assert (not false))(assert (> (str.len var0) (str.len var3)))(assert (str.prefixof (str.replace "g|:IVF1QkR" var2 var5) (str.at var4 var7)))(check-sat)