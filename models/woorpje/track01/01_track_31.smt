(set-logic QF_S)
(declare-fun D () String)
(declare-fun A () String)
(assert (= (str.++  A "d" A "ijjahaafgie")  (str.++  A "d" D) ))
(check-sat)
(get-model)
