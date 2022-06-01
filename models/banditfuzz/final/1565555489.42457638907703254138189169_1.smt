;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.10210657119750977, 'smt_solvers/QF_S/z3str3fed/': 0.08292698860168457, 'smt_solvers/QF_S/cvc4/': 0.2063305377960205, 'smt_solvers/QF_S/z3str3/': 0.13234281539916992}
;  score   = 0.07398772239685059
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/cvc4/': 'sat', 'smt_solvers/QF_S/z3str3/': 'sat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (not var11))(assert (str.suffixof (str.substr "s|>Yd@}k:^" var7 var7) (str.substr var0 var6 var8)))(assert (<= var7 var5))(assert (str.contains var0 var1))(assert (str.in_re (str.at var1 4) (re.+ re.allchar)))(check-sat)