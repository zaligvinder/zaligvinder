(declare-const X String)
; s_sq=aolsnssigninUser-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "s_sq=aolsnssigninUser-Agent:\u{a}"))))
(check-sat)
