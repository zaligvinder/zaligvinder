;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.07338166236877441, 'smt_solvers/QF_S/z3str3/': 0.11217904090881348, 'smt_solvers/QF_S/cvc4/': 0.1631481647491455, 'smt_solvers/QF_S/z3seq/': 0.11832475662231445}
;  score   = 0.044823408126831055
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/z3str3/': 'sat', 'smt_solvers/QF_S/cvc4/': 'sat', 'smt_solvers/QF_S/z3seq/': 'sat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.in_re (str.at var1 var7) (re.* re.allchar)))(assert (str.suffixof (str.substr "T}/-%y%A\\V" var6 var10) (str.at var1 var7)))(assert (> var8 10))(assert (not (str.prefixof "V(,#@jl25a" var0)))(assert (str.in_re (str.at (str.at var4 var11) (str.len var1)) (re.* (re.* re.allchar))))(check-sat)