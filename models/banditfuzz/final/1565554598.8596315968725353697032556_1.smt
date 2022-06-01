;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.06358981132507324, 'smt_solvers/QF_S/cvc4/': 0.09047985076904297, 'smt_solvers/QF_S/z3seq/': 0.08084988594055176, 'smt_solvers/QF_S/z3str3/': 0.10308218002319336}
;  score   = -0.01260232925415039
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic ALL)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (< var5 9))(assert (str.in_re (str.replace var2 "_X)^;`@-PG" var3) (re.+ (re.+ re.allchar))))(assert (> (str.len (str.substr var2 var5 var5)) (str.indexof var2 var3 var7)))(assert (str.prefixof var0 var2))(assert (> (str.len var4) (str.len var4)))(check-sat)