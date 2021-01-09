;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.09506011009216309, 'smt_solvers/QF_S/z3seq/': 0.08756256103515625, 'smt_solvers/QF_S/cvc4/': 0.1869065761566162, 'smt_solvers/QF_S/z3str3fed/': 0.07329320907592773}
;  score   = 0.09184646606445312
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (< (str.len (str.replace "|(oP;3i%43" var0 var3)) (str.indexof (str.replace var3 "caP*[Q)p""'" var4) (str.substr var1 var7 var5) (str.len var3))))(assert (str.in.re (str.at var2 var6) (re.+ re.allchar)))(assert (< var9 var9))(assert (str.suffixof (str.substr var0 var9 var5) (str.replace (str.substr var3 var8 var8) (str.replace var3 var3 var4) (str.at var4 10))))(assert (> (str.len var4) (str.len "Tf^ULASv9q")))(check-sat)