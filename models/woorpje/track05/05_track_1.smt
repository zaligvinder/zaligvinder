(set-logic QF_S)
(declare-fun H () String)
(declare-fun B () String)
(declare-fun A () String)
(assert (= (str.++  "aabbeefcbbfcdebbd" B "efcacdcd")  (str.++  "aabbeefc" H "cac" A "d") ))
(assert (= (str.++  "affdaadccecabfaaddcdeecfdebcedaaabdbabca" "")  (str.++  "affdaa" A "cecabfaaddcdeecfdebcedaaabdbabca") ))
(assert (= (str.++  "da" A "aaffafffacceccacedefdeafcffdbafbcfaa")  (str.++  "da" A "aaffafffacceccacedefdeafcffdbafbcfaa") ))
(assert (<=(* (str.len A) 14) 70))
(assert (<=(* (str.len H) 14) 364))
(assert (<=(* (str.len B) 12) 1404))
(check-sat)
(get-model)
