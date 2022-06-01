(declare-const X String)
; [\dA-Za-z]+
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z"))) (str.to_re "\u{a}"))))
(check-sat)
