(set-logic QF_S)
(declare-fun B () String)
(declare-fun F () String)
(declare-fun E () String)
(assert (= (str.++  "bfafd" B "cedbcffb")  (str.++  "bfafdceaed" F "bcffb") ))
(assert (= (str.++  "eefedbcbfec" B E "ada")  (str.++  F "dacbfeabbdbdcdccefcada" "") ))
(assert (= (str.++  "cacaeecafabdaaeebaeffec" B "fcdbdecbefeea")  (str.++  "cacaeecafabdaaeebaeffec" B "fcdbdecbefeea") ))
(assert (= (str.++  "eebeccbfaadbbcefaefcbccddecfffac" B "afac")  (str.++  "eebeccbfaadbbcefaefcbccddecfffac" B "afac") ))
(assert (>=(* (str.len B) 13) 52))
(assert (<=(* (str.len B) 17) 306))
(assert (>=(* (str.len F) 3) 45))
(assert (<=(* (str.len E) 11) 1188))
(check-sat)
(get-model)
