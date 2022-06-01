;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.6338188648223877, 'smt_solvers/QF_S/z3str3fed/': 0.10038924217224121, 'smt_solvers/QF_S/z3str3/': 0.11580204963684082, 'smt_solvers/QF_S/z3seq/': 0.11608266830444336}
;  score   = 0.5177361965179443
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.prefixof (str.replace var3 var2 var3) (str.at var0 var9)))(assert (<= (str.indexof var0 var4 var9) (str.len var1)))(assert (> (str.len var1) (str.indexof var4 var4 var7)))(assert (str.contains (str.replace (str.replace "BteAx,bv%L" var0 var0) (str.at var4 var7) (str.at var3 2)) (str.substr var4 var9 var9)))(assert (not (<= (str.indexof var3 var0 7) (str.indexof var4 var0 var9))))(check-sat)