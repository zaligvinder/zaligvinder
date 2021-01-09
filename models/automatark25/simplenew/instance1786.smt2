(declare-const X String)
; /[a-z\d\x2f\x2b\x3d]{100}/AGPi
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 100 100) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "/") (str.to.re "+") (str.to.re "="))) (str.to.re "/AGPi\x0a"))))
(check-sat)
