;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.06585240364074707, 'smt_solvers/QF_S/cvc4/': 0.05774950981140137, 'smt_solvers/QF_S/z3seq/': 0.08332228660583496, 'smt_solvers/QF_S/z3str3/': 0.08009958267211914}
;  score   = -0.025572776794433594
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (< var5 4))(assert (> (str.indexof var2 var4 var7) (str.indexof "b)`$`Io0,<" "&Q""l<%h""~k" var8)))(assert (< (str.len var3) (str.len var4)))(assert (not (<= var8 var8)))(assert (str.in_re (str.replace var0 var0 var4) (re.* (re.* re.allchar))))(check-sat)