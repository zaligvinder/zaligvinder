(declare-const X String)
; ((&#[0-9]+|&[a-zA-Z]+[0-9]*?);)
(assert (str.in.re X (re.++ (str.to.re "\x0a;&") (re.union (re.++ (str.to.re "#") (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.range "0" "9")))))))
(check-sat)
