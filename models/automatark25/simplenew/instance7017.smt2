(declare-const X String)
; \u{2A}PORT1\u{2A}WarezX-Mailer\u{3A}Snake\u{2F}bonzibuddy\u{2F}
(assert (str.in_re X (str.to_re "*PORT1*WarezX-Mailer:\u{13}Snake/bonzibuddy/\u{a}")))
(check-sat)
