(declare-const X String)
; forum=.*Explorer\s+Host\u{3A}act=Host\u{3a}User-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "forum=") (re.* re.allchar) (str.to_re "Explorer") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:act=Host:User-Agent:\u{a}"))))
(check-sat)
