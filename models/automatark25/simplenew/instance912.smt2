(declare-const X String)
; MailerHost\u{3A}User-Agent\u{3A}
(assert (str.in_re X (str.to_re "MailerHost:User-Agent:\u{a}")))
(check-sat)
