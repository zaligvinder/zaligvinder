(declare-const X String)
; HXLogOnlyanHost\u{3A}spasHost\u{3A}
(assert (str.in_re X (str.to_re "HXLogOnlyanHost:spasHost:\u{a}")))
(check-sat)
