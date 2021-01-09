(declare-const X String)
; Xtrawww\x2Einstafinder\x2EcomsearchHost\x3A
(assert (str.in.re X (str.to.re "Xtrawww.instafinder.comsearchHost:\x0a")))
(check-sat)
