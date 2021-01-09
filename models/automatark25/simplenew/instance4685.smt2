(declare-const X String)
; BasicPointsHost\x3Anews
(assert (not (str.in.re X (str.to.re "BasicPointsHost:news\x0a"))))
(check-sat)
