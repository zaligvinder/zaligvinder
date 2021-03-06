(set-logic QF_S)
(declare-fun H () String)
(declare-fun G () String)
(declare-fun F () String)
(assert (= (str.++  "cc" H "edcffcea" F "dcd")  (str.++  "ccdeaadcaf" G "cffcea" F "dcd") ))
(assert (= (str.++  "debfadceedccabcfcfdfdddadbccfafedacdcfdd" "")  (str.++  "debfadceedccabcfcfdfdddadbccf" G "acdcfdd") ))
(assert (= (str.++  "bbbffafedcbeabefdfbccbeabceebeeffacedfcb" "")  (str.++  "bbbff" G "cbeabefdfbccbeabceebeeffacedfcb") ))
(assert (>=(* (str.len F) 10) 30))
(assert (<=(* (str.len F) 14) 784))
(assert (>=(* (str.len H) 7) 21))
(assert (>=(* (str.len G) 16) 48))
(check-sat)
(get-model)
