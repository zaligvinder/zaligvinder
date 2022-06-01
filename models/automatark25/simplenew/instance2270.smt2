(declare-const X String)
; /\u{3d}\u{a}$/P
(assert (not (str.in_re X (str.to_re "/=\u{a}/P\u{a}"))))
(check-sat)
