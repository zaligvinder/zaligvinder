;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.2170870304107666, 'smt_solvers/QF_S/z3str3/': 0.10004806518554688, 'smt_solvers/QF_S/z3str3fed/': 0.07374072074890137, 'smt_solvers/QF_S/z3seq/': 0.09118509292602539}
;  score   = 0.11703896522521973
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.suffixof (str.replace var4 var5 var2) (str.replace var1 "(peBc_hbZ&" "#=%qlB9838")))(assert (< (str.len (str.++ var3 var3)) (str.indexof var2 var2 var7)))(assert (not (str.prefixof "4nsCC\\QZ7@" var2)))(assert (str.in.re var2 re.allchar))(assert (not (<= var11 4)))(check-sat)