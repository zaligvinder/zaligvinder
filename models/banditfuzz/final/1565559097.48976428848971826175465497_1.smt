;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 2500, 'smt_solvers/QF_S/z3seq/': 0.10384869575500488, 'smt_solvers/QF_S/z3str3/': 0.11852121353149414, 'smt_solvers/QF_S/z3str3fed/': 0.15726399421691895}
;  score   = 7499.842736005783
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'timeout', 'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/z3str3/': 'sat', 'smt_solvers/QF_S/z3str3fed/': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.contains (str.at var2 var11) (str.at var2 var9)))(assert (> (str.to.int var5) (str.to.int var1)))(assert (not (<= var9 var10)))(assert (str.suffixof (str.at "1Szfz|L-Si" var6) (str.at var0 3)))(assert (str.in.re (str.at var4 var11) (re.* re.allchar)))(check-sat)