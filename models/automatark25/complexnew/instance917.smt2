(declare-const X String)
; /\u{2e}rtf([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.rtf") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; ^([0-7])*$
(assert (str.in_re X (re.++ (re.* (re.range "0" "7")) (str.to_re "\u{a}"))))
(check-sat)
