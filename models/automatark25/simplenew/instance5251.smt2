(declare-const X String)
; User-Agent\u{3A}\u{2F}tba\u{2F}From\u{3A}
(assert (not (str.in_re X (str.to_re "User-Agent:/tba/From:\u{a}"))))
(check-sat)
