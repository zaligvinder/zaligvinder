(declare-const X String)
; Computeron\x3Acom\x3E2\x2E41
(assert (str.in.re X (str.to.re "Computeron:com>2.41\x0a")))
(check-sat)
