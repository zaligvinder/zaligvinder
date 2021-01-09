(declare-const X String)
; aboutKeyloggeras\x2Estarware\x2EcomProtoHost\x3a\.asp\?brand=
(assert (str.in.re X (str.to.re "aboutKeyloggeras.starware.comProtoHost:.asp?brand=\x0a")))
(check-sat)
