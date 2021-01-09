;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.16993498802185059, 'smt_solvers/QF_S/z3str3/': 0.8714733123779297, 'smt_solvers/QF_S/z3str3fed/': 0.2266833782196045, 'smt_solvers/QF_S/z3seq/': 0.25005459785461426}
;  score   = -0.7015383243560791
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'sat', 'smt_solvers/QF_S/z3str3/': 'sat', 'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/z3seq/': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (>= (str.len var4) (str.len var0)))(assert (str.suffixof (str.substr (str.replace var2 var3 var3) (str.indexof var1 var1 var7) (str.indexof var4 var4 var7)) (str.replace (str.at var1 var9) (str.at var4 var5) (str.at var4 var5))))(assert (str.contains (str.at var2 var7) (str.replace var4 var3 var4)))(assert (str.suffixof var3 var1))(assert (str.in.re (str.replace var2 var2 var1) (re.* (re.+ re.allchar))))(check-sat)