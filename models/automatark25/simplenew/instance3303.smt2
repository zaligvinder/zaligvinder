(declare-const X String)
; \.txt$
(assert (str.in_re X (str.to_re ".txt\u{a}")))
(check-sat)
