(declare-const X String)
; Host\x3AHost\x3AX-Mailer\x3a
(assert (not (str.in.re X (str.to.re "Host:Host:X-Mailer:\x13\x0a"))))
(check-sat)
