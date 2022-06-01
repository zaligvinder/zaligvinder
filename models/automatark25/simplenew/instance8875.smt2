(declare-const X String)
; \u{2F}xml\u{2F}toolbar\u{2F}Exploiter
(assert (str.in_re X (str.to_re "/xml/toolbar/Exploiter\u{a}")))
(check-sat)
