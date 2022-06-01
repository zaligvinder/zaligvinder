;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.0906059741973877, 'smt_solvers/QF_S/z3str3/': 0.10359835624694824, 'smt_solvers/QF_S/cvc4/': 0.23662281036376953, 'smt_solvers/QF_S/z3str3fed/': 0.07471418380737305}
;  score   = 0.1330244541168213
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (not (> var6 var7)))(assert (<= (str.len var4) (str.len var0)))(assert (str.prefixof var3 var0))(assert (str.contains (str.at var1 var6) (str.replace var0 var3 "IQ*C<k#1$u")))(assert (str.in_re (str.substr (str.++ var1 var1) (str.len var2) (str.len var2)) (re.* (re.* re.allchar))))(check-sat)