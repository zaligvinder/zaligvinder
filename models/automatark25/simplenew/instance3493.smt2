(declare-const X String)
; \u{2F}xml\u{2F}toolbar\u{2F}
(assert (str.in_re X (str.to_re "/xml/toolbar/\u{a}")))
(check-sat)
