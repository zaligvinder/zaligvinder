;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.20384693145751953, 'smt_solvers/QF_S/z3str3/': 0.09774947166442871, 'smt_solvers/QF_S/z3str3fed/': 0.06698226928710938, 'smt_solvers/QF_S/z3seq/': 0.08314681053161621}
;  score   = 0.10609745979309082
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (> (str.indexof var1 var0 var9) (str.indexof var1 var4 var9)))(assert (str.contains (str.at var2 var6) (str.at var4 var9)))(assert (< (str.indexof var4 var1 var8) (str.len var4)))(assert (>= (str.len var4) (str.indexof "EE,*eOJBOu" var3 2)))(assert (> (str.indexof var0 var4 7) (str.len var1)))(check-sat)