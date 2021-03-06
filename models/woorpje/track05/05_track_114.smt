(set-logic QF_S)
(declare-fun I () String)
(declare-fun B () String)
(declare-fun G () String)
(declare-fun F () String)
(declare-fun D () String)
(assert (= (str.++  "debee" B "bae" D "e" B "dbec" G B "ccdabefadadfaabcdf")  (str.++  "debee" B F I "e" B "dbe" B G B "ccdabefadadfaab" B "df") ))
(assert (= (str.++  B B "cbeafcaafd" B "bdcdffb" B "afffae" F "aaefdaedfaa")  (str.++  B "c" B "beafcaafdcbd" B "dffb" B "afffaebaaaefdaedfaa") ))
(assert (= (str.++  "ffaebdcacbfbfeabdadadedaaaeefaf" B "aaaeda" B "f")  (str.++  "ffaebdca" B "bf" G "eabdadadedaaaeefafcaaaedacf") ))
(assert (>=(* (str.len G) 20) 40))
(assert (<=(* (str.len B) 7) 63))
(assert (>=(* (str.len D) 10) 10))
(assert (>=(* (str.len I) 17) 85))
(check-sat)
(get-model)
