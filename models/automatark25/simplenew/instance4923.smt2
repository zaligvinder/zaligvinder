(declare-const X String)
; \u{2F}communicatortbHost\u{3a}
(assert (not (str.in_re X (str.to_re "/communicatortbHost:\u{a}"))))
(check-sat)
