;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.31074070930480957, 'smt_solvers/QF_S/z3str3/': 0.12426137924194336, 'smt_solvers/QF_S/z3str3fed/': 0.07480716705322266, 'smt_solvers/QF_S/z3seq/': 0.09952068328857422}
;  score   = 0.1864793300628662
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.contains var2 var4))(assert (str.suffixof (str.at (str.at var0 4) (str.len var1)) (str.replace (str.replace var2 ";xW%~dv}29" var3) (str.substr var4 var8 var8) (str.replace var4 ",<"":}L7,b@" var0))))(assert (< (str.indexof (str.at var1 5) (str.replace var1 var3 var2) (str.len "B49%@)]UU*")) (str.indexof var2 var0 var8)))(assert (< (str.len var3) (str.len var3)))(assert (str.contains (str.substr var0 var5 var5) (str.replace "Un0Hb7(ExT" "_r\\Bz=ss>s" var4)))(check-sat)