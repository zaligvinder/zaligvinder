(set-logic QF_S)
(declare-fun B () String)
(declare-fun D () String)
(declare-fun F () String)
(assert (= (str.++  "bc" D "aadfbe" B "defacfbaeddbdaaedd")  (str.++  "bcfafacecae" F "baeddbdaaedd") ))
(assert (= (str.++  "abbeabfdfdefffaf" B "bfabbdbdfaeedfeebdbd")  (str.++  "abbeabfdfdefffafadabbfabbdbdfaeedfeebdbd" "") ))
(assert (= (str.++  "aeaeecaedabbafbbcfebfebdedfcd" B "bdefcdd")  (str.++  "aeaeecaedabbafbbcfebfebdedfcd" B "bdefcdd") ))
(assert (<=(* (str.len F) 15) 960))
(assert (>=(* (str.len B) 8) 32))
(assert (>=(* (str.len D) 8) 32))
(check-sat)
(get-model)
