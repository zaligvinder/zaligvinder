(declare-const X String)
; Referer\x3aHost\x3aport\x3aactivity
(assert (str.in.re X (str.to.re "Referer:Host:port:activity\x0a")))
(check-sat)
