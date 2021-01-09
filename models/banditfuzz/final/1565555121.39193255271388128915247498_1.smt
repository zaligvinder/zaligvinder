;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.08533835411071777, 'smt_solvers/QF_S/z3str3fed/': 0.06239748001098633, 'smt_solvers/QF_S/z3seq/': 0.18914484977722168, 'smt_solvers/QF_S/cvc4/': 0.17744112014770508}
;  score   = -0.011703729629516602
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.suffixof ".X71A{,*{6" "{'&d/7l37<"))(assert (str.in.re (str.at var4 var9) (re.+ re.allchar)))(assert (str.in.re (str.replace "-""@tZC{crD" var1 "w7i3ft>B}a") (re.* re.allchar)))(assert (str.in.re (str.replace var1 var4 var3) (re.* re.allchar)))(assert (> (str.indexof (str.replace var4 var1 var3) (str.at var2 var8) (str.indexof var2 var1 var8)) (str.len (str.substr var3 var5 var5))))(check-sat)