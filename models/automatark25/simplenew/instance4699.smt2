(declare-const X String)
; pass=Referer\x3ASurveillance
(assert (not (str.in.re X (str.to.re "pass=Referer:Surveillance\x13\x0a"))))
(check-sat)
