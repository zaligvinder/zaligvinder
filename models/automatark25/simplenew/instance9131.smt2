(declare-const X String)
; ConectadoHost\u{3a}as\.cometsystems\.com
(assert (not (str.in_re X (str.to_re "ConectadoHost:as.cometsystems.com\u{a}"))))
(check-sat)
