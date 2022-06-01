(declare-const X String)
; onBetaHost\u{3a}youRootReferer\u{3A}
(assert (not (str.in_re X (str.to_re "onBetaHost:youRootReferer:\u{a}"))))
(check-sat)
