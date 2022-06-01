;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.09827852249145508, 'smt_solvers/QF_S/cvc4/': 0.27537107467651367, 'smt_solvers/QF_S/z3str3fed/': 0.08182120323181152, 'smt_solvers/QF_S/z3str3/': 0.11478948593139648}
;  score   = 0.1605815887451172
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (> (str.indexof var4 var2 var9) (str.len var3)))(assert (> (str.len (str.replace var3 "KmpNz]~{/:" var4)) (str.len var0)))(assert (>= (str.indexof var2 var4 var6) (str.len (str.replace var1 var0 var4))))(assert (str.contains (str.replace var0 var0 var0) (str.substr var4 var7 9)))(assert (not (not (<= 4 var5))))(check-sat)