;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.13967108726501465, 'smt_solvers/QF_S/z3str3/': 0.13983702659606934, 'smt_solvers/QF_S/cvc4/': 0.0950160026550293, 'smt_solvers/QF_S/z3seq/': 0.20432114601135254}
;  score   = -0.10930514335632324
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/z3str3/': 'sat', 'smt_solvers/QF_S/cvc4/': 'sat', 'smt_solvers/QF_S/z3seq/': 'sat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (not (str.contains var0 var2)))(assert (str.in_re (str.substr var2 var6 var5) (re.+ (re.* re.allchar))))(assert (str.suffixof (str.at (str.substr var3 5 var7) (str.len var4)) (str.at var1 var9)))(assert (>= 9 var5))(assert (< (str.indexof "b\\\\;wmL{vL" var0 var6) (str.len var3)))(check-sat)