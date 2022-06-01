(declare-const X String)
; Windows\s+haveFTUser-Agent\u{3A}Dayspassword\u{3B}0\u{3B}Incorrect
(assert (not (str.in_re X (re.++ (str.to_re "Windows") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "haveFTUser-Agent:Dayspassword;0;Incorrect\u{a}")))))
(check-sat)
