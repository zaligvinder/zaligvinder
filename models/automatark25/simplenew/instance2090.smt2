(declare-const X String)
; Remote\x3Cchat\x3EX-Mailer\x3awww\x2eproventactics\x2ecom
(assert (str.in.re X (str.to.re "Remote<chat>\x1bX-Mailer:\x13www.proventactics.com\x0a")))
(check-sat)
