(set-logic QF_S)
(declare-fun N () String)
(declare-fun H () String)
(declare-fun K () String)
(declare-fun I () String)
(declare-fun G () String)
(declare-fun L () String)
(declare-fun M () String)
(declare-fun P () String)
(declare-fun Q () String)
(assert (= (str.++  H G "aaaaa" H G "aaaab" I I I I I I I I "b" L L K K "b" N N "b" Q)  (str.++  "a" G G I "aaaa" K K K K "b" L L L "a" L L L "ab" M N M N "b" P P "baa") ))
(check-sat)
(get-model)
