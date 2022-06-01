(declare-const X String)
; \u{2F}GR\s+\u{2A}PORT3\u{2A}\d+Host\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "/GR") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "*PORT3*") (re.+ (re.range "0" "9")) (str.to_re "Host:\u{a}")))))
(check-sat)
