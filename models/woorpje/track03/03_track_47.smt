(set-logic QF_S)
(declare-fun I () String)
(declare-fun G () String)
(declare-fun F () String)
(declare-fun H () String)
(assert (= (str.++  "aaaa" F "aaaaaaa" F "aab" G H "ba" H "b" I)  (str.++  "a" G F "a" G G G G "b" H "a" H "abaabaa") ))
(check-sat)
(get-model)
