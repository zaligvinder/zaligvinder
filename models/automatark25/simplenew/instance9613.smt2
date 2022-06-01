(declare-const X String)
; &
(assert (not (str.in_re X (str.to_re "&\u{a}"))))
(check-sat)
