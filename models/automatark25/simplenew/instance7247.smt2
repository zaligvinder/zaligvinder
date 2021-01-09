(declare-const X String)
; Host\x3APG=SPEEDBARReferer\x3a
(assert (not (str.in.re X (str.to.re "Host:PG=SPEEDBARReferer:\x0a"))))
(check-sat)
