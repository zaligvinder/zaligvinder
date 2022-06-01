(declare-const X String)
; Xtrawww\u{2E}instafinder\u{2E}comsearchHost\u{3A}
(assert (str.in_re X (str.to_re "Xtrawww.instafinder.comsearchHost:\u{a}")))
(check-sat)
