(declare-const X String)
; [\u{0}-\u{1F}\u{7F}]
(assert (str.in_re X (re.++ (re.union (re.range "\u{0}" "\u{1f}") (str.to_re "\u{7f}")) (str.to_re "\u{a}"))))
; /\u{2e}jpg([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.jpg") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)
