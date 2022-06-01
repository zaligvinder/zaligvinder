;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.5908153057098389, 'smt_solvers/QF_S/z3str3/': 0.3485424518585205, 'smt_solvers/QF_S/z3seq/': 0.9565026760101318, 'smt_solvers/QF_S/cvc4/': 2500}
;  score   = 7499.04349732399
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/cvc4/': 'timeout'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (>= (str.len var4) (str.len var5)))(assert (< var11 var9))(assert (str.in_re (str.at var5 10) (re.+ re.allchar)))(assert (< (str.len (str.replace var4 var5 var0)) (str.indexof (str.at var3 var11) (str.at var3 (str.indexof var3 var4 var7)) (str.to_int var5))))(assert (str.in_re (str.at var1 var7) (re.+ re.allchar)))(assert (< 2 var6))(assert (<= var11 var8))(check-sat)