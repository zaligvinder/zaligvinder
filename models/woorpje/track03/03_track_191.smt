(set-logic QF_S)
(declare-fun H () String)
(declare-fun K () String)
(declare-fun I () String)
(declare-fun G () String)
(declare-fun L () String)
(declare-fun N () String)
(declare-fun O () String)
(declare-fun M () String)
(declare-fun P () String)
(assert (= (str.++  H I "aa" H I "ab" K K "aaaab" L K "b" N "b" P)  (str.++  "a" G G I "aa" I I K I I K "b" K K "a" K K K "a" K "b" M O M O "b" O O "baa") ))
(check-sat)
(get-model)
