;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.1522831916809082, 'smt_solvers/QF_S/z3str3fed/': 0.10181188583374023, 'smt_solvers/QF_S/cvc4/': 0.28698134422302246, 'smt_solvers/QF_S/z3str3/': 0.160125732421875}
;  score   = 0.12685561180114746
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/cvc4/': 'sat', 'smt_solvers/QF_S/z3str3/': 'sat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.prefixof (str.replace var3 "KAsyKJ)80B" var3) (str.replace var3 "KAsyKJ)80B" var3)))(assert (< (str.indexof (str.substr var4 var8 var10) (str.at "=nI-Mpp<|C" var8) (str.len var2)) (str.len (str.at var1 var9))))(assert (not (>= var7 var10)))(assert (str.suffixof (str.substr var0 var10 var9) (str.substr var3 var10 2)))(assert (str.contains (str.at var0 var9) (str.substr var3 var9 var10)))(check-sat)