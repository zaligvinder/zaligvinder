(set-logic QF_S)
(declare-fun C () String)
(declare-fun G () String)
(declare-fun E () String)
(declare-fun D () String)
(assert (= (str.++  "f" C E)  (str.++  D G) ))
(check-sat)
(get-model)
