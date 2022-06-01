;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.08396124839782715, 'smt_solvers/QF_S/z3str3/': 0.118133544921875, 'smt_solvers/QF_S/z3seq/': 0.09884953498840332, 'smt_solvers/QF_S/cvc4/': 6.057388067245483}
;  score   = 5.939254522323608
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.prefixof (str.replace var3 var0 var3) (str.at var3 var8)))(assert (str.contains (str.substr """V32\\6[e7O" var6 var7) (str.replace var3 var0 var0)))(assert (not (str.suffixof var0 var1)))(assert (< var6 7))(assert (< (str.len (str.replace "rXBBs=p%.$" var1 var4)) (str.indexof var3 "w0;>>f%chH" var6)))(check-sat)