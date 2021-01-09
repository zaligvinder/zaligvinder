(declare-const X String)
; &
(assert (str.in.re X (str.to.re "&\x0a")))
(check-sat)
