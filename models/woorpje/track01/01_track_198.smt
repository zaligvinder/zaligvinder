(set-logic QF_S)
(declare-fun K () String)
(declare-fun J () String)
(declare-fun N () String)
(declare-fun M () String)
(declare-fun D () String)
(assert (= (str.++  K "aaa" M "b" J "accbcbbb" N "accbaa")  (str.++  "a" N "bcaaaaaabaacbcaab" N "aba" D "abacaaccbcbbb" N "accbaa") ))
(check-sat)
(get-model)
