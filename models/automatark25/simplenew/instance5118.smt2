(declare-const X String)
; \x3Cchat\x3EHost\x3Atid\x3D\x7B
(assert (str.in.re X (str.to.re "<chat>\x1bHost:tid={\x0a")))
(check-sat)
