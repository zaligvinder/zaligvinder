(set-logic QF_S)
(declare-fun H () String)
(declare-fun G () String)
(declare-fun F () String)
(assert (= (str.++  F F "a" F F "baab" H)  (str.++  "aaaaaa" G "a" G "baabaa") ))
(check-sat)
(get-model)
