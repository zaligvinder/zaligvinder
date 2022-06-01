;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.07345414161682129, 'smt_solvers/QF_S/z3seq/': 0.234144926071167, 'smt_solvers/QF_S/z3str3/': 0.1984875202178955, 'smt_solvers/QF_S/cvc4/': 0.7751717567443848}
;  score   = 0.5410268306732178
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'sat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (not (>= (str.len var3) (str.indexof var2 var0 var9))))(assert (str.in_re var2 re.allchar))(assert (str.contains (str.substr (str.replace "K(b4C5'\\;C" var2 var3) (str.indexof var2 var0 var9) (str.len var3)) (str.replace (str.at var0 var7) (str.at var2 var7) (str.replace var2 "0U;j5qZoL'" "JdkfFG|lFs"))))(assert (str.suffixof (str.at var2 var8) (str.substr var0 var8 var5)))(assert (>= (str.indexof var1 "fYqVPV""""2}" var6) (str.indexof var2 var3 var7)))(check-sat)