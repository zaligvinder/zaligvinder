(declare-const X String)
; ProPOWRSTRPquick\u{2E}qsrch\u{2E}comReferer\u{3A}
(assert (str.in_re X (str.to_re "ProPOWRSTRPquick.qsrch.comReferer:\u{a}")))
(check-sat)
