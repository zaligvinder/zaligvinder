(set-logic QF_S)
(declare-fun I () String)
(declare-fun G () String)
(declare-fun J () String)
(assert (= (str.++  "ffee" J "cfb" J "d" I "dd")  (str.++  "ffeedcfb" J J "cdcdc" J G) ))
(assert (= (str.++  "e" J "ade" J "bd" J J "bfcaebdeecbab" J "ceacffeda" J "cfeeee")  (str.++  "eda" J "edbdd" J "bfcaebdeecbab" J "ceacffedadcfeeee") ))
(assert (= (str.++  "feeecedfeafea" J "eeabfb" J "aedcaaaeba" J "cbc" J "afaa")  (str.++  "feeece" J "feafea" J "eeabfb" J "ae" J "caaaeba" J "cbc" J "afaa") ))
(assert (>=(* (str.len I) 9) 162))
(assert (>=(* (str.len J) 19) 19))
(assert (<=(* (str.len J) 11) 33))
(check-sat)
(get-model)
