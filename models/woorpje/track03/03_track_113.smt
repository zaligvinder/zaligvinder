(set-logic QF_S)
(declare-fun I () String)
(declare-fun H () String)
(declare-fun G () String)
(declare-fun E () String)
(declare-fun F () String)
(declare-fun J () String)
(assert (= (str.++  E E "a" E E "b" G I "b" I)  (str.++  "a" E F H H H H "b" J J "baa") ))
(check-sat)
(get-model)
