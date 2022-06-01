(declare-const X String)
; Host\u{3A}PG=SPEEDBARReferer\u{3a}
(assert (not (str.in_re X (str.to_re "Host:PG=SPEEDBARReferer:\u{a}"))))
(check-sat)
