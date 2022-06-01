;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.10912585258483887, 'smt_solvers/QF_S/z3str3/': 0.12090539932250977, 'smt_solvers/QF_S/cvc4/': 0.15450787544250488, 'smt_solvers/QF_S/z3str3fed/': 0.09433174133300781}
;  score   = 0.03360247611999512
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (>= (str.len (str.replace var1 var3 var0)) (str.len (str.substr var4 var6 var6))))(assert (str.prefixof var3 var4))(assert (str.in_re (str.substr var4 var7 var6) (re.+ re.allchar)))(assert (> (str.indexof var3 var4 var7) (str.len var2)))(assert (str.contains (str.replace ",""1<82H_;:" var1 "<\\lR.c71&c") (str.substr (str.at var4 7) (str.indexof var0 var4 var7) (str.len "5Pi?4x&*67"))))(check-sat)