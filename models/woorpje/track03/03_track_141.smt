(set-logic QF_S)
(declare-fun H () String)
(declare-fun G () String)
(declare-fun E () String)
(declare-fun F () String)
(assert (= (str.++  G "aa" G "ab" G)  (str.++  "a" E F H H "baa") ))
(check-sat)
(get-model)
