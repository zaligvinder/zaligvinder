(set-logic QF_S)
(declare-fun D () String)
(declare-fun E () String)
(declare-fun F () String)
(assert (= (str.++  D "aa" D "ab" F)  (str.++  "a" E "aaabaa") ))
(check-sat)
(get-model)
