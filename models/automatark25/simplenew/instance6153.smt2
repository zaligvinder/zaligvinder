(declare-const X String)
; User-Agent\u{3A}MailerGuarded
(assert (str.in_re X (str.to_re "User-Agent:MailerGuarded\u{a}")))
(check-sat)
