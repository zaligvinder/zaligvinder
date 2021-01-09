(declare-const X String)
; /\&h=11$/U
(assert (str.in.re X (str.to.re "/&h=11/U\x0a")))
(check-sat)
