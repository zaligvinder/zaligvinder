(declare-const X String)
; Referer\u{3a}Host\u{3a}port\u{3a}activity
(assert (str.in_re X (str.to_re "Referer:Host:port:activity\u{a}")))
(check-sat)
