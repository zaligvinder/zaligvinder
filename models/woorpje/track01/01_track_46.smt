(set-logic QF_S)
(declare-fun I () String)
(declare-fun B () String)
(declare-fun G () String)
(declare-fun F () String)
(declare-fun A () String)
(declare-fun J () String)
(assert (= (str.++  B "aaaa" J A A "aa")  (str.++  F A "aaaaaa" G "aaaaaaaaaaaaaaa" G I A A "a") ))
(check-sat)
(get-model)
