(declare-const X String)
; X-Mailer\x3aUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "X-Mailer:\x13User-Agent:\x0a"))))
(check-sat)
