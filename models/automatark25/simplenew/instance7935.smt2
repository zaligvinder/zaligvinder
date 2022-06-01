(declare-const X String)
; Windows\u{2F}client\u{2F}Blackreportc\.goclick\.comX-Sender\u{3A}
(assert (str.in_re X (str.to_re "Windows/client/Blackreportc.goclick.comX-Sender:\u{13}\u{a}")))
(check-sat)
