;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.1272106170654297, 'smt_solvers/QF_S/z3seq/': 0.13422250747680664, 'smt_solvers/QF_S/z3str3/': 0.16997098922729492, 'smt_solvers/QF_S/cvc4/': 0.24014806747436523}
;  score   = 0.07017707824707031
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/z3str3/': 'sat', 'smt_solvers/QF_S/cvc4/': 'sat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.contains (str.replace (str.at var1 8) (str.replace var4 var5 var0) (str.replace var4 var3 var3)) (str.at var0 var8)))(assert (str.in_re (str.replace var2 var0 var1) (re.+ re.allchar)))(assert (<= (str.len var4) (str.len var1)))(assert (<= (str.len (str.at var1 var9)) (str.len (str.substr var2 var9 var9))))(assert (str.in_re (str.at var4 var6) (re.* re.allchar)))(check-sat)