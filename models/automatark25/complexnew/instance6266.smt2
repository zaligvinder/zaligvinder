(declare-const X String)
; /\&k=\d+($|\&h=)/U
(assert (not (str.in_re X (re.++ (str.to_re "/&k=") (re.+ (re.range "0" "9")) (str.to_re "&h=/U\u{a}")))))
; ^[0-9\s\(\)\+\-]+$
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (str.to_re "(") (str.to_re ")") (str.to_re "+") (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}")))))
(check-sat)
