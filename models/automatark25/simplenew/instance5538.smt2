(declare-const X String)
; X-Mailer\x3awlpgskmv\x2flwzo\.qv#Subject\x3aActivity
(assert (str.in.re X (str.to.re "X-Mailer:\x13wlpgskmv/lwzo.qv#Subject:Activity\x0a")))
(check-sat)
