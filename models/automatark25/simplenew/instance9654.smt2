(declare-const X String)
; hjhgquqssq\u{2f}pjm[^\n\r]*User-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "hjhgquqssq/pjm") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:\u{a}"))))
(check-sat)
