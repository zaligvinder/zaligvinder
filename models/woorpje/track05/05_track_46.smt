(set-logic QF_S)
(declare-fun C () String)
(declare-fun D () String)
(declare-fun F () String)
(assert (= (str.++  "beaadedbdaeccb" D "c")  (str.++  F "cdddcfafbcaadbabfc" "") ))
(assert (= (str.++  "aeafafbcf" C "bbcbeeceeddfcebcdebdbfadae" C "e")  (str.++  "aeafafbcf" C "bbcbeeceeddfcebcdebdbfadaeaae") ))
(assert (= (str.++  "cafdcefdaaaefcefcbbcfedebebbdcececcabbec" "")  (str.++  "cafdcefd" C "aefcefcbbcfedebebbdcececcabbec") ))
(assert (<=(* (str.len F) 15) 555))
(assert (>=(* (str.len D) 5) 70))
(assert (<=(* (str.len D) 1) 101))
(check-sat)
(get-model)
