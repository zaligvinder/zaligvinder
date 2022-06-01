;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.11270689964294434, 'smt_solvers/QF_S/z3str3/': 0.2918548583984375, 'smt_solvers/QF_S/cvc4/': 0.09463930130004883, 'smt_solvers/QF_S/z3seq/': 0.1462101936340332}
;  score   = -0.19721555709838867
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/z3str3/': 'sat', 'smt_solvers/QF_S/cvc4/': 'sat', 'smt_solvers/QF_S/z3seq/': 'sat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (<= (str.len var1) (str.len var3)))(assert (>= (str.indexof var3 var1 var8) (str.len var4)))(assert (str.in_re (str.substr var3 var6 1) (re.* re.allchar)))(assert (str.suffixof (str.substr "##68CA56gz" var8 var6) (str.replace var0 "T3M#O9/d'P" var0)))(assert (str.contains (str.replace var3 "r_~C7atC=+" var1) (str.replace var4 var3 var3)))(check-sat)