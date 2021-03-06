(set-logic QF_S)
(declare-fun H () String)
(declare-fun G () String)
(declare-fun E () String)
(declare-fun F () String)
(assert (= (str.++  G "fbcbfbc" "")  (str.++  "edeedfacfbbccf" E "fbc") ))
(assert (= (str.++  "adcaadacaff" F "bc" H "f" H "dbedcfebcaeecacffcdbd" H)  (str.++  "ad" H "aadacaff" F "b" H H "f" H "dbedcfeb" H "aeecacff" H "dbdc") ))
(assert (= (str.++  "ddaedcb" H "afadbbf" H "afeeda" H "fd" H "edbdebfbdd" H "ade")  (str.++  "ddaed" H "b" H "afadbbfcafeedacfdcedbdebfbddcade") ))
(assert (>=(* (str.len G) 5) 45))
(assert (<=(* (str.len G) 1) 458))
(assert (<=(* (str.len H) 6) 12))
(assert (<=(* (str.len F) 2) 4))
(assert (>=(* (str.len E) 15) 60))
(assert (<=(* (str.len E) 15) 390))
(check-sat)
(get-model)
