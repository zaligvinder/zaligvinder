(set-logic QF_S)
(declare-fun S () String)
(declare-fun H () String)
(declare-fun K () String)
(declare-fun R () String)
(declare-fun U () String)
(declare-fun G () String)
(declare-fun M () String)
(declare-fun P () String)
(assert (= (str.++  "aaaa" G G "aaaaa" G G "aa" G "aaaaa" G G "aaaaa" G G "aa" G "b" K "a" K K "aa" K "ab" P P "b" S S "ba")  (str.++  "a" H G G G "a" G M M M M "b" P M P M "b" R R "b" U U "baa") ))
(check-sat)
(get-model)
