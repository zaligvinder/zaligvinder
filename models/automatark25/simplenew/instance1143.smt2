(declare-const X String)
; DaysLOGHost\u{3a}Host\u{3a}\u{7D}\u{7B}OS\u{3A}Host\u{3A}
(assert (not (str.in_re X (str.to_re "DaysLOGHost:Host:}{OS:Host:\u{a}"))))
(check-sat)
