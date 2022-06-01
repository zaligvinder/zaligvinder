(declare-const X String)
; EIcdpnode=reportUID\u{2F}ServertoX-Mailer\u{3a}
(assert (str.in_re X (str.to_re "EIcdpnode=reportUID/ServertoX-Mailer:\u{13}\u{a}")))
(check-sat)
