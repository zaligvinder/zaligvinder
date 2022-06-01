(declare-const X String)
; \u{2F}bar_pl\u{2F}chk_bar\.fcgiTrojanHost\u{3A}
(assert (not (str.in_re X (str.to_re "/bar_pl/chk_bar.fcgiTrojanHost:\u{a}"))))
(check-sat)
