(declare-const X String)
; \u{2F}bar_pl\u{2F}chk\.fcgiHost\u{3a}
(assert (not (str.in_re X (str.to_re "/bar_pl/chk.fcgiHost:\u{a}"))))
(check-sat)
