(set-logic QF_S)
(declare-fun I () String)
(declare-fun R () String)
(declare-fun H () String)
(declare-fun F () String)
(declare-fun L () String)
(declare-fun P () String)
(assert (= (str.++  F "a" I H I "a" F "a" I H I "baa" I I "b" L L "b" R)  (str.++  "aa" I H H I "a" L "a" I L "a" I "b" L "a" L "ab" P P "baa") ))
(check-sat)
(get-model)
