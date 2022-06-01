(declare-const X String)
; connectedNodes\s+insert\s+haveFTUser-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "connectedNodes") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "insert") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "haveFTUser-Agent:\u{a}")))))
(check-sat)
