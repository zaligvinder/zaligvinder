(declare-const X String)
; ^[1-9][0-9][0-9][0-9][0-9][0-9]$
(assert (str.in.re X (re.++ (re.range "1" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (str.to.re "\x0a"))))
; /[a-zA-Z]/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re "/\x0a")))))
(check-sat)
