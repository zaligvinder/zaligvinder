(set-logic QF_S)
(declare-fun I () String)
(declare-fun H () String)
(declare-fun G () String)
(declare-fun F () String)
(declare-fun J () String)
(assert (= (str.++  G F "aa" G F "ab" G I "b" I)  (str.++  "a" F "a" G G H G H "b" J J "baa") ))
(check-sat)
(get-model)
