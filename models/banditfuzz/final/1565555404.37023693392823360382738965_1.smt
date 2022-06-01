;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.09150004386901855, 'smt_solvers/QF_S/z3str3/': 0.11606144905090332, 'smt_solvers/QF_S/z3seq/': 0.10974884033203125, 'smt_solvers/QF_S/cvc4/': 0.2574615478515625}
;  score   = 0.14140009880065918
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (<= (str.indexof "I]!{#RsJfw" var4 var8) (str.indexof var3 var0 var6)))(assert (str.prefixof (str.at "?_tv#B=p\\h" var8) (str.replace var2 var3 "Yd@QV#Be)@")))(assert (not false))(assert (str.in_re (str.substr var0 var6 var5) (re.* re.allchar)))(assert (< (str.len (str.at var1 var7)) (str.indexof (str.at var1 var5) (str.replace var2 var2 var0) (str.indexof var0 var1 var8))))(check-sat)