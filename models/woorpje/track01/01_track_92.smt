(set-logic QF_S)
(declare-fun G () String)
(declare-fun A () String)
(assert (= (str.++  "cccab" G "baacb" G "bb" A "acbcbbccbbaaacabcacab")  (str.++  "cccab" G "baacb" G "bbca" G "acbcbbccbbaaacabcacab") ))
(check-sat)
(get-model)
