(declare-const X String)
; /\/$/U
(assert (not (str.in.re X (str.to.re "///U\x0a"))))
(check-sat)
