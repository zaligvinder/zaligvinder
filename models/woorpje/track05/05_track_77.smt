(set-logic QF_S)
(declare-fun I () String)
(declare-fun G () String)
(declare-fun J () String)
(declare-fun D () String)
(assert (= (str.++  "cedebfe" G "aecbaab")  (str.++  "ce" J "fbef" I "eeaafaecbaab") ))
(assert (= (str.++  "dcbffabcdefecebfbeafcdeadbdaf" D "fbaffbcfe")  (str.++  "dcbffabcdefecebfbeafcdeadbdaf" D "fbaffbcfe") ))
(assert (= (str.++  "dceccfccbdacadedcfdafdbcbaaeaedffbaaeafc" "")  (str.++  "dceccfccbda" D "dedcfdafdbcbaaeaedffbaaeafc") ))
(assert (>=(* (str.len J) 6) 18))
(assert (>=(* (str.len G) 12) 204))
(assert (<=(* (str.len I) 12) 780))
(check-sat)
(get-model)
