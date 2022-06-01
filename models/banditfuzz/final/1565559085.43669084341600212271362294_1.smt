;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.09189844131469727, 'smt_solvers/QF_S/z3str3fed/': 0.07523846626281738, 'smt_solvers/QF_S/cvc4/': 0.14072251319885254, 'smt_solvers/QF_S/z3str3/': 0.09316110610961914}
;  score   = 0.0475614070892334
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.suffixof var1 var2))(assert (str.contains (str.substr (str.at var1 var8) (str.len var3) (str.indexof "maI((d~]{*" var5 var8)) (str.at var2 var8)))(assert (str.suffixof var1 "#(U/a~K/cJ"))(assert (>= (str.indexof "jUaE*hJ*H1" var2 3) (str.len var2)))(assert (> var8 var8))(check-sat)