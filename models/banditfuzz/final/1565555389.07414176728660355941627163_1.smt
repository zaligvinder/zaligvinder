;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.0818030834197998, 'smt_solvers/QF_S/z3seq/': 0.10589981079101562, 'smt_solvers/QF_S/cvc4/': 0.18036746978759766, 'smt_solvers/QF_S/z3str3/': 0.1031796932220459}
;  score   = 0.07446765899658203
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/cvc4/': 'sat', 'smt_solvers/QF_S/z3str3/': 'sat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (> (str.len var0) (str.len var3)))(assert (str.in_re (str.substr (str.substr var3 var8 var8) (str.indexof var2 var2 var9) (str.indexof var2 var2 var8)) (re.+ (re.* re.allchar))))(assert (<= var5 var9))(assert (str.contains var1 "=dF}zskFyh"))(assert (str.contains (str.replace var1 var2 var4) (str.at var3 var5)))(check-sat)