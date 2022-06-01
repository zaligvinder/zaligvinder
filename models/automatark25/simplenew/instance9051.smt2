(declare-const X String)
; /\u{2f}ib2\u{2f}$/U
(assert (str.in_re X (str.to_re "//ib2//U\u{a}")))
(check-sat)
