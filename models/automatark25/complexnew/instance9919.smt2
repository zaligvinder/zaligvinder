(declare-const X String)
; \u{2F}communicatortbHost\u{3a}
(assert (not (str.in_re X (str.to_re "/communicatortbHost:\u{a}"))))
; /\u{2e}p2g([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.p2g") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)
