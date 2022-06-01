;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.08346796035766602, 'smt_solvers/QF_S/cvc4/': 0.361081600189209, 'smt_solvers/QF_S/z3seq/': 0.10045123100280762, 'smt_solvers/QF_S/z3str3/': 0.11410737037658691}
;  score   = 0.24697422981262207
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (> (str.indexof (str.at ".b,}iSRpIB" var9) (str.replace var3 var0 var3) (str.indexof "%:z~t._>2V" var2 var7)) (str.len (str.replace var1 var1 var0))))(assert (str.in_re (str.substr var3 var7 var8) (re.+ re.allchar)))(assert (> var9 var8))(assert (<= (str.indexof var4 var2 var7) (str.indexof var4 var3 var5)))(assert (>= (str.indexof var2 var3 var5) (str.indexof var0 var4 var6)))(check-sat)