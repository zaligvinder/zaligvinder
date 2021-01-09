;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.10216450691223145, 'smt_solvers/QF_S/cvc4/': 0.09192419052124023, 'smt_solvers/QF_S/z3str3fed/': 0.0678248405456543, 'smt_solvers/QF_S/z3seq/': 0.07613372802734375}
;  score   = -0.010240316390991211
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'sat', 'smt_solvers/QF_S/cvc4/': 'sat', 'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/z3seq/': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (< var7 1))(assert (<= (str.len var2) (str.len var3)))(assert (str.in.re (str.substr var2 5 var9) (re.* re.allchar)))(assert (not (str.contains var2 var3)))(assert (<= var9 var8))(check-sat)