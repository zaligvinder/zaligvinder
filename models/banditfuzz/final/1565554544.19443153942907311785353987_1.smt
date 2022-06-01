;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.08099055290222168, 'smt_solvers/QF_S/z3seq/': 0.08346724510192871, 'smt_solvers/QF_S/z3str3fed/': 0.06664323806762695, 'smt_solvers/QF_S/cvc4/': 0.09277915954589844}
;  score   = 0.009311914443969727
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (not var10))(assert (not (not (< var5 var5))))(assert (>= (str.len var0) (str.indexof (str.at var1 var7) (str.at var1 5) (str.len var1))))(assert (str.suffixof var4 var3))(assert (> (str.indexof var4 var0 var7) (str.len var2)))(check-sat)