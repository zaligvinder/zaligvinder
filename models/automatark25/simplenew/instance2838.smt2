(declare-const X String)
; EIcdpnode=reportUID\x2FServertoX-Mailer\x3a
(assert (str.in.re X (str.to.re "EIcdpnode=reportUID/ServertoX-Mailer:\x13\x0a")))
(check-sat)
