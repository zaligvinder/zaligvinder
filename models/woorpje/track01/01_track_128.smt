(set-logic QF_S)
(declare-fun G () String)
(declare-fun E () String)
(assert (= (str.++  E "")  (str.++  G "") ))
(check-sat)
(get-model)
