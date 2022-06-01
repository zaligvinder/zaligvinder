(declare-const X String)
; Googlelog\=\u{7B}IP\u{3A}PG=SPEEDBAR
(assert (str.in_re X (str.to_re "Googlelog={IP:PG=SPEEDBAR\u{a}")))
(check-sat)
