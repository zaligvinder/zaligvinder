(declare-const X String)
; LoginHost\u{3a}\u{2F}friendship\u{2F}email_thank_you\?
(assert (not (str.in_re X (str.to_re "LoginHost:/friendship/email_thank_you?\u{a}"))))
(check-sat)
