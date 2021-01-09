(declare-const X String)
; /\/[a-z]+\?[a-z]+\=[a-z]+$/U
(assert (str.in.re X (re.++ (str.to.re "//") (re.+ (re.range "a" "z")) (str.to.re "?") (re.+ (re.range "a" "z")) (str.to.re "=") (re.+ (re.range "a" "z")) (str.to.re "/U\x0a"))))
(check-sat)
