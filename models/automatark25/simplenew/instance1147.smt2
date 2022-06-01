(declare-const X String)
; /\u{2e}xfdl([\?\u{5c}\u{2f}]|$)/miU
(assert (str.in_re X (re.++ (str.to_re "/.xfdl") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/miU\u{a}"))))
(check-sat)
