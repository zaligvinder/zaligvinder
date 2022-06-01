(declare-const X String)
; e2give\.comADRemoteHost\u{3A}
(assert (not (str.in_re X (str.to_re "e2give.comADRemoteHost:\u{a}"))))
(check-sat)
