(set-logic QF_S)
(declare-fun I () String)
(declare-fun G () String)
(declare-fun E () String)
(declare-fun D () String)
(assert (= (str.++  D D "a" D D "b" G)  (str.++  "a" D E I I "baa") ))
(check-sat)
(get-model)
