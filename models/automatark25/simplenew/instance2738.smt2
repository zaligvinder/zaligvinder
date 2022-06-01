(declare-const X String)
; /\u{2e}flv([\?\u{5c}\u{2f}]|$)/Umsi
(assert (str.in_re X (re.++ (str.to_re "/.flv") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/Umsi\u{a}"))))
(check-sat)
