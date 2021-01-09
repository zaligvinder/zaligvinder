;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 170.2790560722351, 'smt_solvers/QF_S/z3seq/': 0.10307192802429199, 'smt_solvers/QF_S/z3str3/': 0.09751486778259277, 'smt_solvers/QF_S/z3str3fed/': 0.08597517013549805}
;  score   = 170.17598414421082
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (> (str.indexof var3 var2 var5) (str.indexof var4 var3 var5)))(assert (str.suffixof var0 "*IbMsCv}0s"))(assert (<= (str.len var3) (str.indexof var0 var4 var5)))(assert (< (str.indexof (str.at var0 var9) (str.substr var1 var5 var6) (str.indexof var0 var0 var5)) (str.indexof (str.at var4 var6) (str.replace var1 var2 var4) (str.len var0))))(assert (>= (str.len var1) (str.indexof var1 "*rsJNl<|-r" var9)))(check-sat)