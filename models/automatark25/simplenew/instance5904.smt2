(declare-const X String)
; Host\u{3A}Host\u{3A}X-Mailer\u{3a}
(assert (not (str.in_re X (str.to_re "Host:Host:X-Mailer:\u{13}\u{a}"))))
(check-sat)
