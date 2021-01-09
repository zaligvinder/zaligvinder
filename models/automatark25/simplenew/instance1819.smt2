(declare-const X String)
; vbwwwc\.goclick\.compassword\x3B0\x3BIncorrect
(assert (not (str.in.re X (str.to.re "vbwwwc.goclick.compassword;0;Incorrect\x0a"))))
(check-sat)
