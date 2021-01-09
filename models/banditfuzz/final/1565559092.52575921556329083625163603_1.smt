;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.22820806503295898, 'smt_solvers/QF_S/z3str3/': 8.525060415267944, 'smt_solvers/QF_S/z3seq/': 0.315521240234375, 'smt_solvers/QF_S/cvc4/': 2500}
;  score   = 7491.474939584732
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/z3str3/': 'sat', 'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/cvc4/': 'timeout'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (< var6 var7))(assert (str.in.re (str.substr (str.replace var3 var4 var5) (str.indexof var3 var5 var11) (str.indexof "vUj:$Nw1g;" var3 var6)) (re.+ re.allchar)))(assert (str.contains (str.replace var5 var2 var3) (str.substr "{efDj!S""aB" 6 var6)))(assert (< var9 var10))(assert (str.prefixof var5 var3))(check-sat)