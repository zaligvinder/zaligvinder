(declare-const X String)
; Subject\u{3A}LOGX-Mailer\u{3a}
(assert (str.in_re X (str.to_re "Subject:LOGX-Mailer:\u{13}\u{a}")))
(check-sat)
