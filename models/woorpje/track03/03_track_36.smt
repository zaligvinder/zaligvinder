(set-logic QF_S)
(declare-fun S () String)
(declare-fun J () String)
(declare-fun T () String)
(declare-fun H () String)
(declare-fun K () String)
(declare-fun R () String)
(declare-fun G () String)
(declare-fun L () String)
(declare-fun N () String)
(declare-fun O () String)
(declare-fun M () String)
(declare-fun Z () String)
(assert (= (str.++  K "kaa" K K J "aa" K K "aa" K K J "ab" N "a" L K "b" S O "b" S "b")  (str.++  "aaaa" H G K K H "a" M N M "a" N L "a" M N M "a" N L "ab" R "a" R "a" R "a" R "ab" T T "b" Z Z "baa") ))
(check-sat)
(get-model)
