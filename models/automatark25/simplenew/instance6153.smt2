(declare-const X String)
; User-Agent\x3AMailerGuarded
(assert (str.in.re X (str.to.re "User-Agent:MailerGuarded\x0a")))
(check-sat)
