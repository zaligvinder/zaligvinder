;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.11654162406921387, 'smt_solvers/QF_S/z3seq/': 0.09821105003356934, 'smt_solvers/QF_S/cvc4/': 0.19280743598937988, 'smt_solvers/QF_S/z3str3fed/': 0.0781254768371582}
;  score   = 0.07626581192016602
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (>= (str.indexof (str.at "iY=@BCV\\Cw" var9) (str.at var1 var7) (str.len ":um-%FW(yq")) (str.len (str.at var2 3))))(assert (> (str.len var1) (str.indexof var3 var1 var6)))(assert (str.prefixof (str.at var5 var11) (str.at var0 var7)))(assert (<= var7 var8))(assert (str.in_re (str.substr var5 var6 var6) (re.+ re.allchar)))(check-sat)