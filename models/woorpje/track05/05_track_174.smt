(set-logic QF_S)
(declare-fun I () String)
(declare-fun G () String)
(declare-fun A () String)
(assert (= (str.++  "fb" G "eccfdb")  (str.++  "fbafbffefbceaabf" A "fdb") ))
(assert (= (str.++  "cebabd" I "ccb" I "c" I "edcffedbeabca" I "cbcfaa" I "fdbbcb")  (str.++  "cebabddccb" I "cdedcffe" I "beabcadcbcfaa" I "f" I "bbcb") ))
(assert (= (str.++  "cdbc" I "bdabffbceccb" I "bfbadbdfcedc" I "fabf" I "adba")  (str.++  "c" I "bcdb" I "abffbceccb" I "bfbadbdfce" I "cdfabfda" I "ba") ))
(assert (>=(* (str.len G) 12) 324))
(assert (<=(* (str.len I) 10) 90))
(check-sat)
(get-model)
