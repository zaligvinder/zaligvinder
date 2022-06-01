(declare-const X String)
; \u{2F}bar_pl\u{2F}b\.fcgiHost\u{3A}Host\u{3A}Class\u{2F}toolbar\u{2F}ico\u{2F}GoogleLogsencoderserver
(assert (str.in_re X (str.to_re "/bar_pl/b.fcgiHost:Host:Class/toolbar/ico/GoogleLogsencoderserver\u{a}")))
(check-sat)
