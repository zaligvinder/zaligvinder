(set-logic QF_S)
(declare-fun I () String)
(declare-fun F () String)
(declare-fun E () String)
(declare-fun D () String)
(assert (= (str.++  "fdcefceac" E "c" E "ffabb" E D "b" I E "e" E E "bc" E "eccebb" E)  (str.++  "fdce" F E "ffabb" E "aeffcb" I E "e" E E "bc" E "eccebbd") ))
(assert (= (str.++  "ebccafbe" E E "bfeacc" E "aceedbfcedcffbbffbeacff")  (str.++  "ebccafbe" E E "bfeacc" E "aceedbfce" E "cffbbffbeacff") ))
(assert (= (str.++  "faace" E "fcbeffcabaebaceffdbaabfe" I "dabadfdc")  (str.++  I "ace" E "fcbeffcabaebaceff" E "baabfefa" E "aba" E "fdc") ))
(assert (<=(* (str.len E) 12) 12))
(assert (>=(* (str.len F) 5) 15))
(assert (<=(* (str.len I) 9) 81))
(assert (>=(* (str.len D) 18) 36))
(check-sat)
(get-model)
