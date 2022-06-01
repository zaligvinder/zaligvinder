(declare-const X String)
; vbwwwc\.goclick\.compassword\u{3B}0\u{3B}Incorrect
(assert (not (str.in_re X (str.to_re "vbwwwc.goclick.compassword;0;Incorrect\u{a}"))))
(check-sat)
