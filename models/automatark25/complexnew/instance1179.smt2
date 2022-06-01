(declare-const X String)
; Windows\u{2F}client\u{2F}Blackreportc\.goclick\.comX-Sender\u{3A}
(assert (str.in_re X (str.to_re "Windows/client/Blackreportc.goclick.comX-Sender:\u{13}\u{a}")))
; Computeron\u{3A}com\u{3E}2\u{2E}41
(assert (not (str.in_re X (str.to_re "Computeron:com>2.41\u{a}"))))
(check-sat)
