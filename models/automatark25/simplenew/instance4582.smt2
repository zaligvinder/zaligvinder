(declare-const X String)
; User-Agent\u{3A}\s+\u{7D}\u{7B}Password\u{3A}\d+information
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "}{Password:\u{1b}") (re.+ (re.range "0" "9")) (str.to_re "information\u{a}")))))
(check-sat)
