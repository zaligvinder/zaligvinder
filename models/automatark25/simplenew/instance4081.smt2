(declare-const X String)
; /\u{3d}\u{3d}$/P
(assert (str.in_re X (str.to_re "/==/P\u{a}")))
(check-sat)
