;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.09005928039550781, 'smt_solvers/QF_S/z3str3fed/': 0.07358503341674805, 'smt_solvers/QF_S/cvc4/': 0.17900323867797852, 'smt_solvers/QF_S/z3str3/': 0.1027379035949707}
;  score   = 0.07626533508300781
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (< (str.len var0) (str.indexof var4 var4 var8)))(assert (< var9 var10))(assert (str.suffixof var3 var1))(assert (not (not (str.suffixof var0 "An0ixd1Kqj"))))(assert (str.in_re (str.substr var2 var7 var6) (re.+ re.allchar)))(check-sat)