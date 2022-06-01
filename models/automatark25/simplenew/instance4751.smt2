(declare-const X String)
; Subject\u{3a}\s+BossUser-Agent\u{3A}SpediaUser-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "Subject:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "BossUser-Agent:SpediaUser-Agent:\u{a}"))))
(check-sat)
