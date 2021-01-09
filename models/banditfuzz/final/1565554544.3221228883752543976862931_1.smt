;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.06364917755126953, 'smt_solvers/QF_S/z3seq/': 0.08198833465576172, 'smt_solvers/QF_S/cvc4/': 5.846411228179932, 'smt_solvers/QF_S/z3str3/': 0.4019622802734375}
;  score   = 5.444448947906494
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (< (str.len var1) (str.len var2)))(assert (str.in.re var2 re.allchar))(assert (>= (str.indexof (str.replace var3 var2 var3) (str.replace var0 var4 var2) (str.len ":8k|i?`+^o")) (str.len var3)))(assert (str.suffixof (str.replace ":mQQX__xq?" var2 var0) (str.replace var2 "SG$V$G';Ys" var0)))(assert (not (str.contains var1 var0)))(check-sat)