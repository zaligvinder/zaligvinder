(declare-const X String)
; \u{2A}PORT3\u{2A}\s+Warez.*X-Mailer\u{3A}Subject\u{3A}KEY=
(assert (str.in_re X (re.++ (str.to_re "*PORT3*") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Warez") (re.* re.allchar) (str.to_re "X-Mailer:\u{13}Subject:KEY=\u{a}"))))
(check-sat)
