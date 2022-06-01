;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.09927630424499512, 'smt_solvers/QF_S/cvc4/': 0.17137360572814941, 'smt_solvers/QF_S/z3seq/': 0.0936579704284668, 'smt_solvers/QF_S/z3str3fed/': 0.07694196701049805}
;  score   = 0.0720973014831543
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'sat', 'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/z3str3fed/': 'sat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (>= (str.indexof var3 var0 var5) (str.len var3)))(assert (str.in_re (str.replace var2 var0 var4) (re.+ re.allchar)))(assert (str.suffixof var3 var1))(assert (not (not (> var7 1))))(assert (str.in_re var1 re.allchar))(check-sat)