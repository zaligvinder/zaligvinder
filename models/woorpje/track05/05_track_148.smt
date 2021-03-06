(set-logic QF_S)
(declare-fun I () String)
(declare-fun B () String)
(declare-fun F () String)
(declare-fun J () String)
(assert (= (str.++  "eeaefdaf" I "c" B "adaccddecdc")  (str.++  "eeaefdaffffecdcc" B "adaccddecdc") ))
(assert (= (str.++  "bcbdc" I F "faffdcdfafcacfbb")  (str.++  "bcbdc" F "eddba" F "eaee" J) ))
(assert (= (str.++  "dbcccccfcdebdea" F F "bdfdbfdcbaffbfdfadcaddf")  (str.++  "dbcccccfcdebdea" F F "bdfdbfdcbaffbfdfadcaddf") ))
(assert (= (str.++  "dbafaccdbadd" F "fbca" F "bbdd" F "fda" F "d" F "bdacacfbf" F F)  (str.++  "dbafaccdbadd" F "fbcaebbdd" F "fda" F "d" F "bdacacfbf" F F) ))
(assert (<=(* (str.len J) 16) 1168))
(assert (<=(* (str.len B) 12) 588))
(assert (>=(* (str.len I) 7) 49))
(assert (>=(* (str.len F) 15) 15))
(check-sat)
(get-model)
