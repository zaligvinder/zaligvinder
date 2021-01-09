(declare-const X String)
; LoginHost\x3a\x2Ffriendship\x2Femail_thank_you\?
(assert (not (str.in.re X (str.to.re "LoginHost:/friendship/email_thank_you?\x0a"))))
(check-sat)
