(set-logic QF_S)
(declare-fun C () String)
(declare-fun D () String)
(declare-fun J () String)
(assert (= (str.++  "aadbfffb" J "abffaefb" J D "fbaeaefd")  (str.++  "aadbfffb" J "a" J "ffaef" C) ))
(assert (= (str.++  "bdbf" J "fdbacfafaaeadaedcbccecebccaddbfb" J "d" J)  (str.++  J "d" J "f" J "fdbacfafaaeadaedc" J "ccece" J "ccaddbfbbdb") ))
(assert (= (str.++  "fffbddffdadec" J J "bbbcb" J "aefaeecf" J "aabbfabebd")  (str.++  "fff" J "ddffdadec" J J "b" J "bcb" J "aefaeecfbaa" J J "fa" J "ebd") ))
(assert (<=(* (str.len J) 13) 169))
(assert (<=(* (str.len C) 8) 504))
(assert (>=(* (str.len D) 12) 168))
(check-sat)
(get-model)
