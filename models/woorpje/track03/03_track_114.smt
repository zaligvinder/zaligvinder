(set-logic QF_S)
(declare-fun H () String)
(declare-fun K () String)
(declare-fun E () String)
(declare-fun J () String)
(assert (= (str.++  E E "a" E E "b" K)  (str.++  "a" H H J J "baa") ))
(check-sat)
(get-model)
