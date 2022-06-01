(declare-const X String)
; (\n\r)   replacement string---->\n
(assert (str.in_re X (str.to_re "\u{a}\u{d}   replacement string---->\u{a}\u{a}")))
(check-sat)
