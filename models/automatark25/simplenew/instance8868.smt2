(declare-const X String)
; \xA9
(assert (str.in.re X (str.to.re "\xa9\x0a")))
(check-sat)
