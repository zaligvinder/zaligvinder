(declare-const X String)
; \u{5C}home\/lordofsearchToolbar\u{22}StarLogger\u{22}
(assert (not (str.in_re X (str.to_re "\u{5c}home/lordofsearchToolbar\u{22}StarLogger\u{22}\u{a}"))))
(check-sat)
