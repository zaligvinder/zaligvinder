(declare-const X String)
; Host\x3AX-Mailer\x3Aas\x2Estarware\x2Ecom
(assert (not (str.in.re X (str.to.re "Host:X-Mailer:\x13as.starware.com\x0a"))))
(check-sat)
