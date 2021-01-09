;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.15880322456359863, 'smt_solvers/QF_S/z3str3/': 0.0903313159942627, 'smt_solvers/QF_S/z3seq/': 0.08748388290405273, 'smt_solvers/QF_S/z3str3fed/': 0.07010030746459961}
;  score   = 0.06847190856933594
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (< (str.len var5) (str.len var5)))(assert (>= (str.len var3) (str.indexof var3 var5 var11)))(assert (str.in.re (str.at var5 var11) (re.+ re.allchar)))(assert (not var17))(assert (str.suffixof (str.substr var5 var8 var10) (str.substr var5 var8 var10)))(check-sat)