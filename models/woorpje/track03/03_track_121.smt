(set-logic QF_S)
(declare-fun K () String)
(declare-fun G () String)
(declare-fun E () String)
(declare-fun N () String)
(declare-fun M () String)
(assert (= (str.++  E G G G "a" E G G G "b" K K "b" N)  (str.++  "a" E E E "aa" M "a" M "b" M M "baa") ))
(check-sat)
(get-model)
