;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.07856559753417969, 'smt_solvers/QF_S/z3seq/': 0.11334562301635742, 'smt_solvers/QF_S/cvc4/': 0.05859541893005371, 'smt_solvers/QF_S/z3str3/': 0.10006427764892578}
;  score   = -0.05475020408630371
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/cvc4/': 'sat', 'smt_solvers/QF_S/z3str3/': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (not var14))(assert (str.in.re (str.at var1 var6) (re.* re.allchar)))(assert (str.contains var0 var3))(assert (<= (str.len (str.substr var3 7 var8)) (str.len (str.replace "Og/qK@iPm+" var4 var0))))(assert (> 5 var7))(check-sat)