(declare-const X String)
; /^\/999$/U
(assert (not (str.in_re X (str.to_re "//999/U\u{a}"))))
(check-sat)
