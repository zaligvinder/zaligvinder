(declare-const X String)
; MailerHost\x3AUser-Agent\x3A
(assert (str.in.re X (str.to.re "MailerHost:User-Agent:\x0a")))
(check-sat)
