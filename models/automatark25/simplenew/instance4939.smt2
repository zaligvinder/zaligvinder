(declare-const X String)
; Black\s+Warezxmlns\u{3A}%3flinkautomatici\u{2E}comSubject\u{3a}Host\u{3A}
(assert (str.in_re X (re.++ (str.to_re "Black") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Warezxmlns:%3flinkautomatici.comSubject:Host:\u{a}"))))
(check-sat)
