(declare-const X String)
; /^range\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (str.in.re X (re.++ (str.to.re "/range|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "|/\x0a"))))
; /\x2ephp\x3f[a-z]+=[a-fA-Z0-9]+&[a-z]+=[0-9]+$/iU
(assert (not (str.in.re X (re.++ (str.to.re "/.php?") (re.+ (re.range "a" "z")) (str.to.re "=") (re.+ (re.union (re.range "a" "f") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "&") (re.+ (re.range "a" "z")) (str.to.re "=") (re.+ (re.range "0" "9")) (str.to.re "/iU\x0a")))))
(check-sat)
