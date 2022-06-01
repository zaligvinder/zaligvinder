(declare-const X String)
; cyber@yahoo\u{2E}comconfig\u{2E}180solutions\u{2E}com
(assert (not (str.in_re X (str.to_re "cyber@yahoo.comconfig.180solutions.com\u{a}"))))
(check-sat)
