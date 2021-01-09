;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.22478842735290527, 'smt_solvers/QF_S/z3seq/': 0.11640143394470215, 'smt_solvers/QF_S/cvc4/': 0.36992907524108887, 'smt_solvers/QF_S/z3str3/': 0.15758419036865234}
;  score   = 0.1451406478881836
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (not var10))(assert (str.suffixof var1 var4))(assert (str.contains (str.replace (str.at var3 var6) (str.replace var2 var1 var1) (str.replace var1 "UGhlmO1\\ie" var2)) (str.replace var2 "a""wo`uSUHa" var4)))(assert (< var6 var9))(assert (< (str.len (str.replace var4 var0 var4)) (str.indexof (str.substr var2 var9 1) (str.substr var4 var8 var9) (str.indexof var4 var1 var8))))(check-sat)