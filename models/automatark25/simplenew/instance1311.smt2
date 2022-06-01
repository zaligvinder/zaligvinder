(declare-const X String)
; /\&h=11$/U
(assert (str.in_re X (str.to_re "/&h=11/U\u{a}")))
(check-sat)
