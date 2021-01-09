(declare-const X String)
; /[a-z]\x3d[a-f\d]{126}/P
(assert (str.in.re X (re.++ (str.to.re "/") (re.range "a" "z") (str.to.re "=") ((_ re.loop 126 126) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/P\x0a"))))
(check-sat)
