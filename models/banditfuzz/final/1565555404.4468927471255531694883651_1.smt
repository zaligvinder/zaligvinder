;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.17847323417663574, 'smt_solvers/QF_S/z3str3fed/': 0.12488627433776855, 'smt_solvers/QF_S/z3str3/': 0.11391329765319824, 'smt_solvers/QF_S/z3seq/': 0.15338349342346191}
;  score   = 0.025089740753173828
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'sat', 'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'sat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.contains var1 var2))(assert (< var8 var6))(assert (>= (str.len "BI;5h=}56t") (str.len (str.at var1 var9))))(assert (< (str.indexof var2 var4 var8) (str.indexof (str.at var3 var8) (str.at var4 var8) (str.len var4))))(assert (str.suffixof (str.substr var0 var5 var5) (str.at var4 var5)))(check-sat)