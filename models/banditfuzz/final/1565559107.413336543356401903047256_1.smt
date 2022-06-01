;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.09713292121887207, 'smt_solvers/QF_S/z3str3fed/': 0.08405661582946777, 'smt_solvers/QF_S/z3str3/': 0.10325884819030762, 'smt_solvers/QF_S/cvc4/': 0.3188202381134033}
;  score   = 0.2155613899230957
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.in_re (str.substr var0 var9 var9) (re.+ re.allchar)))(assert (>= (str.indexof (str.at var1 var9) (str.at var3 var7) (str.indexof var0 var4 var10)) (str.len var4)))(assert (str.contains (str.at var0 var6) (str.replace var0 var4 var1)))(assert (str.suffixof var3 var5))(assert (str.contains (str.substr var2 var7 var6) (str.substr (str.replace var3 var1 var0) (str.len var5) (str.len var0))))(check-sat)