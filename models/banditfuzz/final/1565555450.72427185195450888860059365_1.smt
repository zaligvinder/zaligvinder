;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.43975377082824707, 'smt_solvers/QF_S/z3seq/': 0.08178186416625977, 'smt_solvers/QF_S/z3str3fed/': 0.06932377815246582, 'smt_solvers/QF_S/z3str3/': 0.11293625831604004}
;  score   = 0.32681751251220703
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.suffixof (str.at (str.replace var1 var2 var0) (str.len var3)) (str.substr var3 3 var5)))(assert (str.prefixof (str.replace (str.replace var4 var4 var1) (str.replace var2 "u9jpErxMW|" var0) (str.replace var0 var3 var2)) (str.at var1 var7)))(assert (> (str.len var3) (str.len var1)))(assert (str.prefixof var3 var2))(assert (> (str.indexof (str.at var0 var6) (str.at var4 var8) (str.indexof var4 var2 var5)) (str.len (str.replace var0 var2 var4))))(check-sat)