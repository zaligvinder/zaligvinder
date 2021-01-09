(declare-const X String)
; is\x7D\x7BPort\x3A\x7D\x7BUser\x3A
(assert (str.in.re X (str.to.re "is}{Port:}{User:\x0a")))
(check-sat)
