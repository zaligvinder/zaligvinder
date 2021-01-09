(declare-const X String)
; \x5D\x2520\x5BPort_X-Mailer\x3AX-Mailer\x3awww\.actualnames\.comwebsearch\.getmirar\.com
(assert (not (str.in.re X (str.to.re "]%20[Port_X-Mailer:\x13X-Mailer:\x13www.actualnames.comwebsearch.getmirar.com\x0a"))))
(check-sat)
