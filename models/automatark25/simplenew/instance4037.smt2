(declare-const X String)
; DaysLOGHost\x3aHost\x3a\x7D\x7BOS\x3AHost\x3A
(assert (str.in.re X (str.to.re "DaysLOGHost:Host:}{OS:Host:\x0a")))
(check-sat)
