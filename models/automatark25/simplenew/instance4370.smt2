(declare-const X String)
; (\b\w+\b)       # Match a word and capture it
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "       # Match a word and capture it\x0a"))))
(check-sat)
