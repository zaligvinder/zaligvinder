;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.08594465255737305, 'smt_solvers/QF_S/cvc4/': 0.5404753684997559, 'smt_solvers/QF_S/z3seq/': 0.17105889320373535, 'smt_solvers/QF_S/z3str3/': 0.19559669494628906}
;  score   = 0.3448786735534668
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/cvc4/': 'sat', 'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/z3str3/': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.prefixof (str.substr var5 var9 var7) (str.at var1 var7)))(assert (> (str.indexof var2 var3 var10) (str.len var0)))(assert (<= var8 var11))(assert (< var8 var6))(assert (str.suffixof (str.substr "@MNfa.y++F" var7 var7) (str.substr var5 var7 var8)))(assert (str.in.re (str.at var5 var6) (re.+ re.allchar)))(assert (str.prefixof (str.replace var5 var2 "G=I_""B4]w/") (str.at "KYOm!b4+`R" var6)))(check-sat)