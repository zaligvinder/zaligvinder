(declare-const X String)
; Windows\x2Fclient\x2FBlackreportc\.goclick\.comX-Sender\x3A
(assert (str.in.re X (str.to.re "Windows/client/Blackreportc.goclick.comX-Sender:\x13\x0a")))
; Computeron\x3Acom\x3E2\x2E41
(assert (not (str.in.re X (str.to.re "Computeron:com>2.41\x0a"))))
(check-sat)
