(declare-const X String)
; /^fastddos\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (str.in.re X (re.++ (str.to.re "/fastddos|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "|/\x0a"))))
; ^(27|0)[0-9]{9}
(assert (str.in.re X (re.++ (re.union (str.to.re "27") (str.to.re "0")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a"))))
; PALTALKSubject\x3A\x7D\x7BUser\x3A
(assert (str.in.re X (str.to.re "PALTALKSubject:}{User:\x0a")))
(check-sat)
