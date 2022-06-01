;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 2500, 'smt_solvers/QF_S/z3str3fed/': 40.598387718200684, 'smt_solvers/QF_S/z3seq/': 49.405786991119385, 'smt_solvers/QF_S/z3str3/': 3.760714530944824}
;  score   = 7450.594213008881
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'timeout', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.suffixof var2 var2))(assert (str.prefixof var2 var4))(assert (> (str.indexof var5 var4 var6) (str.indexof var4 var5 var8)))(assert (< (str.len (str.replace var0 var1 "rv1@\\""BG|s")) (str.indexof (str.substr var0 var11 var6) (str.substr var5 var10 2) (str.len var2))))(assert (str.in_re (str.replace var3 var2 var1) (re.+ re.allchar)))(check-sat)