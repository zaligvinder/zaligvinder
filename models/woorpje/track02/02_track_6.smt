(set-logic QF_S)
(declare-fun B () String)
(declare-fun E () String)
(declare-fun A () String)
(declare-fun C () String)
(declare-fun D () String)
(assert (= (str.++  A "a" A "b" B "b" C "b" D "b" E)  (str.++  "a" A B B "b" C C "b" D D "b" E E "baa") ))
(check-sat)
(get-model)
