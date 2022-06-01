(declare-const X String)
; /\u{2e}class([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.class") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; [\u{0}-\u{1F}\u{7F}]
(assert (not (str.in_re X (re.++ (re.union (re.range "\u{0}" "\u{1f}") (str.to_re "\u{7f}")) (str.to_re "\u{a}")))))
(check-sat)
