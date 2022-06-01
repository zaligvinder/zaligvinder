(declare-const X String)
; /\u{b6}\u{b6}\u{ff}\u{ff}\u{ff}\u{ff}$/
(assert (not (str.in_re X (str.to_re "/\u{b6}\u{b6}\u{ff}\u{ff}\u{ff}\u{ff}/\u{a}"))))
(check-sat)
