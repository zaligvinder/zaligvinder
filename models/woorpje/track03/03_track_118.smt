(set-logic QF_S)
(declare-fun I () String)
(declare-fun G () String)
(declare-fun E () String)
(declare-fun J () String)
(assert (= (str.++  E E E G "a" E E E G "b" I I "b" I)  (str.++  "a" G G G G G G G G "b" J J "baa") ))
(check-sat)
(get-model)
