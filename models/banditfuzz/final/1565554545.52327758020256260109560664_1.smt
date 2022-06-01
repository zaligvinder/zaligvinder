;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.20582318305969238, 'smt_solvers/QF_S/z3str3fed/': 0.08035016059875488, 'smt_solvers/QF_S/z3str3/': 0.12102437019348145, 'smt_solvers/QF_S/z3seq/': 0.10268068313598633}
;  score   = 0.08479881286621094
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'sat', 'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/z3str3/': 'sat', 'smt_solvers/QF_S/z3seq/': 'sat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.suffixof (str.at var3 var6) (str.at "ZV15<i<[L""" var9)))(assert (str.contains var3 var0))(assert (str.prefixof (str.substr var0 var5 8) (str.at var1 var5)))(assert (>= (str.len var0) (str.len var3)))(assert (str.suffixof var1 var4))(check-sat)