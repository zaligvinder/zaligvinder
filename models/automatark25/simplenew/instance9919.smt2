(declare-const X String)
; PALTALKSubject\x3A\x7D\x7BUser\x3A
(assert (not (str.in.re X (str.to.re "PALTALKSubject:}{User:\x0a"))))
(check-sat)
