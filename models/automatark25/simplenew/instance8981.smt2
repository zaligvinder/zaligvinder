(declare-const X String)
; X-Mailer\x3AisSubject\x3a
(assert (not (str.in.re X (str.to.re "X-Mailer:\x13isSubject:\x0a"))))
(check-sat)
