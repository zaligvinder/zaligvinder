;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.44611072540283203, 'smt_solvers/QF_S/z3str3fed/': 1.945502519607544, 'smt_solvers/QF_S/z3str3/': 0.8962380886077881, 'smt_solvers/QF_S/cvc4/': 0.16607379913330078}
;  score   = -1.7794287204742432
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/z3str3/': 'sat', 'smt_solvers/QF_S/cvc4/': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (> var5 var8))(assert (str.suffixof (str.at (str.substr var3 var5 var7) (str.indexof var1 var1 var5)) (str.substr (str.substr "^zXq}ZIieG" var9 var5) (str.len var4) (str.indexof var0 "}SQFTp1.&3" var7))))(assert (>= (str.len var1) (str.len var4)))(assert (<= (str.indexof var0 var4 var9) (str.indexof (str.substr var4 var9 var5) (str.replace var0 var0 var2) (str.len var1))))(assert (>= (str.indexof var3 var4 var9) (str.indexof (str.substr var2 var5 var6) (str.replace var4 var1 var1) (str.len var4))))(check-sat)