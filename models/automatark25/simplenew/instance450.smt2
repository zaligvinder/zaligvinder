(declare-const X String)
; /\/loader\.cpl$/U
(assert (not (str.in_re X (str.to_re "//loader.cpl/U\u{a}"))))
(check-sat)
