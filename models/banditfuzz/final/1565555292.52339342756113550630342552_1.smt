;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 232.5031862258911, 'smt_solvers/QF_S/z3seq/': 0.12052774429321289, 'smt_solvers/QF_S/z3str3/': 0.20021653175354004, 'smt_solvers/QF_S/z3str3fed/': 0.09931731224060059}
;  score   = 232.30296969413757
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'sat', 'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/z3str3/': 'sat', 'smt_solvers/QF_S/z3str3fed/': 'sat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.suffixof (str.replace var0 var3 var0) (str.replace "2Upss4Eb-3" var1 "+dzDw}d+xI")))(assert (str.in_re (str.replace var0 var1 var1) (re.+ re.allchar)))(assert (str.contains (str.at var2 var5) (str.at (str.substr var0 var8 var6) (str.indexof var4 var2 var6))))(assert (str.prefixof var1 var4))(assert (not (>= (str.len var2) (str.len var0))))(check-sat)