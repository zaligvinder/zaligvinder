;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.15517067909240723, 'smt_solvers/QF_S/cvc4/': 1.3297393321990967, 'smt_solvers/QF_S/z3str3fed/': 0.9573285579681396, 'smt_solvers/QF_S/z3seq/': 0.25214076042175293}
;  score   = 0.37241077423095703
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'sat', 'smt_solvers/QF_S/cvc4/': 'sat', 'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/z3seq/': 'sat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.contains "3/l2Y~<yB[" var5))(assert (>= (str.len (str.substr var3 var8 var11)) (str.indexof (str.substr var2 var9 var10) (str.replace var3 var3 var3) (str.len var4))))(assert (str.prefixof (str.at var3 var11) (str.replace var1 var3 var5)))(assert (not (> var10 var11)))(assert (str.in_re (str.at var5 var8) (re.+ re.allchar)))(check-sat)