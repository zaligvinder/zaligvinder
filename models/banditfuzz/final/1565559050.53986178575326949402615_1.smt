;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.4682931900024414, 'smt_solvers/QF_S/z3str3/': 0.5254702568054199, 'smt_solvers/QF_S/cvc4/': 2500, 'smt_solvers/QF_S/z3seq/': 0.5466108322143555}
;  score   = 7499.453389167786
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/z3str3/': 'sat', 'smt_solvers/QF_S/cvc4/': 'timeout', 'smt_solvers/QF_S/z3seq/': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (< (str.indexof var3 var0 5) (str.indexof var0 var2 var7)))(assert (>= (str.indexof var4 var3 var8) (str.indexof var3 var4 var11)))(assert (str.in.re (str.substr var3 var10 var11) (re.+ (re.+ re.allchar))))(assert (> (str.indexof var2 var0 var9) (str.indexof var5 var5 var10)))(assert (str.suffixof var3 var0))(check-sat)