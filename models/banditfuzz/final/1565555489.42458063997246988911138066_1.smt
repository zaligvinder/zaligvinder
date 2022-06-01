;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.12386178970336914, 'smt_solvers/QF_S/z3str3fed/': 0.0863959789276123, 'smt_solvers/QF_S/z3seq/': 0.10085368156433105, 'smt_solvers/QF_S/cvc4/': 0.24269938468933105}
;  score   = 0.11883759498596191
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.in_re (str.at "R/""gZq}[I)" var5) (re.* re.allchar)))(assert (not (>= (str.indexof var2 var3 var6) (str.indexof "kKT*;zXqSj" var1 var5))))(assert (< (str.len var4) (str.len var4)))(assert (str.suffixof (str.replace var3 "pcL@Yktsg}" var3) (str.at var0 var5)))(assert (str.in_re (str.replace var3 var3 var4) (re.* re.allchar)))(check-sat)