(set-logic QF_S)
(declare-fun S () String)
(declare-fun J () String)
(declare-fun T () String)
(declare-fun R () String)
(declare-fun K () String)
(declare-fun G () String)
(declare-fun N () String)
(declare-fun M () String)
(declare-fun Z () String)
(declare-fun P () String)
(declare-fun W () String)
(assert (= (str.++  J G J J "aaa" K J J J J "aa" J G J J "aaa" K J J J J "ab" K N M "aba" P S "b" W "ab")  (str.++  "a" J J G G G G "a" J J "a" J "a" M N N N M N N N "b" R R R R "b" T T T T "b" Z Z "baa") ))
(check-sat)
(get-model)
