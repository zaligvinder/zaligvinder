;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.7043459415435791, 'smt_solvers/QF_S/cvc4/': 1.0933363437652588, 'smt_solvers/QF_S/z3str3fed/': 0.12470483779907227, 'smt_solvers/QF_S/z3str3/': 0.5297377109527588}
;  score   = 0.3889904022216797
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/cvc4/': 'sat', 'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/z3str3/': 'sat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.contains "#o&KR^0LFa" var4))(assert (str.suffixof (str.replace var0 var2 "OT`cOjwg'^") (str.at var4 var6)))(assert (str.contains var4 var4))(assert (not var15))(assert (str.prefixof (str.at var4 var8) (str.substr var2 var8 var6)))(assert (>= var8 var11))(assert (str.contains var4 var3))(check-sat)