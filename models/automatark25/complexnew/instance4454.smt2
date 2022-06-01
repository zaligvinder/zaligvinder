(declare-const X String)
; ^(/w|/W|[^<>+?$%{}&])+$
(assert (str.in_re X (re.++ (re.+ (re.union (str.to_re "/w") (str.to_re "/W") (str.to_re "<") (str.to_re ">") (str.to_re "+") (str.to_re "?") (str.to_re "$") (str.to_re "%") (str.to_re "{") (str.to_re "}") (str.to_re "&"))) (str.to_re "\u{a}"))))
; spas\s+This\s+\u{7D}\u{7B}Password\u{3A}\s+OSSProxy\u{5C}home\/lordofsearch
(assert (str.in_re X (re.++ (str.to_re "spas") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "This") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "}{Password:\u{1b}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "OSSProxy\u{5c}home/lordofsearch\u{a}"))))
(check-sat)
