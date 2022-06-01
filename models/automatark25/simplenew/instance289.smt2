(declare-const X String)
; (\b\w+\b)       # Match a word and capture it
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "       # Match a word and capture it\u{a}")))))
(check-sat)
