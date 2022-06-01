(declare-const X String)
; ^\d+\*\d+\*\d+$
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "9")) (str.to_re "*") (re.+ (re.range "0" "9")) (str.to_re "*") (re.+ (re.range "0" "9")) (str.to_re "\u{a}")))))
; Anal\s+news.*User-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "Anal") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "news") (re.* re.allchar) (str.to_re "User-Agent:\u{a}"))))
(check-sat)
