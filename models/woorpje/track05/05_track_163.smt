(set-logic QF_S)
(declare-fun C () String)
(declare-fun F () String)
(declare-fun J () String)
(assert (= (str.++  F "acd" C "fcea" F "d" F "bbeeeeeebb")  (str.++  "d" J "b") ))
(assert (= (str.++  "ffabdceadaec" F "fdeb" F "fa" F "ae" F "eb" F F "aaef" F "bcdbfac")  (str.++  "ffab" F "cea" F "aec" F "fdeb" F "fa" F "aedeb" F "daaef" F "bc" F "bfac") ))
(assert (= (str.++  "eaacebefcbeecaeccecaaeaa" F "beaccaabcadcdfa")  (str.++  "eaacebefcbeecaeccecaaeaa" F "beaccaabca" F "cdfa") ))
(assert (>=(* (str.len J) 8) 64))
(assert (<=(* (str.len J) 4) 988))
(assert (>=(* (str.len C) 8) 8))
(assert (<=(* (str.len C) 11) 2871))
(check-sat)
(get-model)
