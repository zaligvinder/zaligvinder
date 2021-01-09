(declare-const X String)
; securityOmFkbWluADROARad\x2Emokead\x2Ecom\x3C\x2Fchat\x3E
(assert (str.in.re X (str.to.re "securityOmFkbWluADROARad.mokead.com</chat>\x0a")))
(check-sat)
