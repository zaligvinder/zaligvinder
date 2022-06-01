(declare-const X String)
; User-Agent\u{3A}ServerHost\u{3A}
(assert (str.in_re X (str.to_re "User-Agent:ServerHost:\u{a}")))
(check-sat)
