(set-logic QF_S)
(declare-fun N () String)
(declare-fun I () String)
(declare-fun K () String)
(declare-fun H () String)
(declare-fun R () String)
(declare-fun F () String)
(declare-fun L () String)
(declare-fun O () String)
(declare-fun M () String)
(assert (= (str.++  F "aa" F "aba" I K "b" L "b" O)  (str.++  "a" I H "aa" L L "b" M N M N "b" R R "baa") ))
(check-sat)
(get-model)
