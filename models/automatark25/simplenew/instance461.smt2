(declare-const X String)
; welcomeforToolbarHost\u{3A}
(assert (str.in_re X (str.to_re "welcomeforToolbarHost:\u{a}")))
(check-sat)
