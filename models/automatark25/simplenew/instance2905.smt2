(declare-const X String)
; ^[a-zA-Z0-9\-]+\.cn$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-"))) (str.to.re ".cn\x0a"))))
(check-sat)
