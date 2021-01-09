(declare-const X String)
; /\x2ephp\x3f[a-z]+=[a-fA-Z0-9]+&[a-z]+=[0-9]+$/iU
(assert (not (str.in.re X (re.++ (str.to.re "/.php?") (re.+ (re.range "a" "z")) (str.to.re "=") (re.+ (re.union (re.range "a" "f") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "&") (re.+ (re.range "a" "z")) (str.to.re "=") (re.+ (re.range "0" "9")) (str.to.re "/iU\x0a")))))
(check-sat)
