(declare-const X String)
; ConectadoHost\x3aas\.cometsystems\.com
(assert (not (str.in.re X (str.to.re "ConectadoHost:as.cometsystems.com\x0a"))))
(check-sat)
