(declare-const X String)
; ^((100)|(\d{0,2}))$
(assert (not (str.in_re X (re.++ (re.union (str.to_re "100") ((_ re.loop 0 2) (re.range "0" "9"))) (str.to_re "\u{a}")))))
; /name\u{3d}screenshot\d+\u{2e}/i
(assert (not (str.in_re X (re.++ (str.to_re "/name=screenshot") (re.+ (re.range "0" "9")) (str.to_re "./i\u{a}")))))
; Host\u{3A}\s+Subject\u{3a}Host\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Subject:Host:\u{a}")))))
; source\=IncrediFind\s+Host\u{3A}\s+Host\u{3A}Host\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "source=IncrediFind") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:Host:\u{a}")))))
(check-sat)
