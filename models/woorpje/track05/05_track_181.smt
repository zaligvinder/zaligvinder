(set-logic QF_S)
(declare-fun C () String)
(declare-fun D () String)
(declare-fun A () String)
(assert (= (str.++  "fdca" C "cea" A "deebeeefebcdacacbedadfc")  (str.++  "fdca" C "c" D "ebcdacacbedadfc") ))
(assert (= (str.++  "feedeaebabfecedbcdbbddebab" A "bfcaefcfdb")  (str.++  "feedeaebabfecedbcdbbddebabddaebfcaefcfdb" "") ))
(assert (= (str.++  "eafdadadbceadf" A "eeedffeefffbedfaabadba")  (str.++  "eafdadadbceadf" A "eeedffeefffbedfaabadba") ))
(assert (<=(* (str.len A) 13) 468))
(assert (<=(* (str.len C) 18) 1188))
(check-sat)
(get-model)
