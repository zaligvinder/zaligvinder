(set-logic QF_S)
(declare-fun H () String)
(declare-fun K () String)
(declare-fun F () String)
(declare-fun G () String)
(declare-fun E () String)
(declare-fun L () String)
(assert (= (str.++  H F F "a" H F F "b" K K "b" K)  (str.++  "a" G E H H H H "b" L L "baa") ))
(check-sat)
(get-model)
