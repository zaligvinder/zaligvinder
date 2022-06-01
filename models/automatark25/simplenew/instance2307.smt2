(declare-const X String)
; \u{2F}bar_pl\u{2F}chk_bar\.fcgiUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "/bar_pl/chk_bar.fcgiUser-Agent:\u{a}")))
(check-sat)
