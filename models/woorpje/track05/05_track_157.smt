(set-logic QF_S)
(declare-fun I () String)
(declare-fun F () String)
(declare-fun E () String)
(declare-fun A () String)
(declare-fun J () String)
(declare-fun D () String)
(assert (= (str.++  "e" F "bdefdffd" A "edc" I "cdfdb")  (str.++  "eabdefd" J "ed" D "dc" I "cdfdb") ))
(assert (= (str.++  "edc" F "fdedbcbdeeccfbbebbdbfecfeebfba" E "dee")  (str.++  "edc" F "fdedbcbdeeccfbbebbdbfecfeebfba" D "dee") ))
(assert (= (str.++  "cbeadacf" F "cfacccddceebaefcbccc" F "abbbaebcfd")  (str.++  "cbe" F "dacf" F "cf" F "cccddceebaefcbcccaabbbaebcfd") ))
(assert (>=(* (str.len J) 13) 52))
(assert (<=(* (str.len D) 19) 551))
(assert (<=(* (str.len E) 2) 18))
(assert (>=(* (str.len F) 11) 11))
(check-sat)
(get-model)
