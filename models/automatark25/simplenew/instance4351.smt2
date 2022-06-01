(declare-const X String)
; \u{2F}searchfast\u{2F}Navhelper
(assert (str.in_re X (str.to_re "/searchfast/Navhelper\u{a}")))
(check-sat)
