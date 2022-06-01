(declare-const X String)
; kwd\s+User-Agent\u{3A}register\.aspUser-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "kwd") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:register.aspUser-Agent:\u{a}"))))
(check-sat)
