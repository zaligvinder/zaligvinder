(declare-const X String)
; /\u{25}3D$/Im
(assert (str.in_re X (str.to_re "/%3D/Im\u{a}")))
(check-sat)
