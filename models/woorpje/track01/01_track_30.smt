(set-logic QF_S)
(declare-fun H () String)
(declare-fun F () String)
(declare-fun A () String)
(assert (= (str.++  A "d" A "ee" H "c" A)  (str.++  "bd" A F "c" A) ))
(check-sat)
(get-model)
