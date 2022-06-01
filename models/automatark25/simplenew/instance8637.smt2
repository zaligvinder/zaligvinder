(declare-const X String)
; \u{A9}
(assert (str.in_re X (str.to_re "\u{a9}\u{a}")))
(check-sat)
