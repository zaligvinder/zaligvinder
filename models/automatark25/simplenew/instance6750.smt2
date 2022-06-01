(declare-const X String)
; \u{28}BDLL\u{29}Googledll\u{3F}
(assert (str.in_re X (str.to_re "(BDLL)\u{13}Googledll?\u{a}")))
(check-sat)
