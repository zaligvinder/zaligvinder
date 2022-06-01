(declare-const X String)
; User-Agent\u{3A}ServerHost\u{3A}
(assert (str.in_re X (str.to_re "User-Agent:ServerHost:\u{a}")))
; Subject\u{3A}LOGX-Mailer\u{3a}
(assert (str.in_re X (str.to_re "Subject:LOGX-Mailer:\u{13}\u{a}")))
(check-sat)
