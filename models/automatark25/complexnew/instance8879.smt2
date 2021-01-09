(declare-const X String)
; BasicPointsHost\x3Anews
(assert (str.in.re X (str.to.re "BasicPointsHost:news\x0a")))
; Fen\xeatreEye\x2Fdss\x2Fcc\.2_0_0\.TROJAN-
(assert (str.in.re X (str.to.re "Fen\xeatreEye/dss/cc.2_0_0.TROJAN-\x0a")))
(check-sat)
