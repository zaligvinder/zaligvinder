;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.2139110565185547, 'smt_solvers/QF_S/z3seq/': 0.09682750701904297, 'smt_solvers/QF_S/z3str3fed/': 0.0819544792175293, 'smt_solvers/QF_S/z3str3/': 0.12244844436645508}
;  score   = 0.09146261215209961
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (>= (str.indexof var0 var5 var7) (str.len var0)))(assert (<= (str.len var0) (str.indexof var0 var5 var11)))(assert (str.in_re (str.substr var5 var10 var7) (re.+ re.allchar)))(assert (str.suffixof var2 var2))(assert (str.suffixof (str.at var2 2) (str.at var4 var10)))(check-sat)