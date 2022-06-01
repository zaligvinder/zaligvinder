(declare-const X String)
; 12/err
(assert (not (str.in_re X (str.to_re "12/err\u{a}"))))
(check-sat)
