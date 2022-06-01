(declare-const X String)
; /\/[a-z]+\?[a-z]+\=[a-z]+$/U
(assert (str.in_re X (re.++ (str.to_re "//") (re.+ (re.range "a" "z")) (str.to_re "?") (re.+ (re.range "a" "z")) (str.to_re "=") (re.+ (re.range "a" "z")) (str.to_re "/U\u{a}"))))
(check-sat)
