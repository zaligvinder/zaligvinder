(declare-const X String)
; /^([0-2]\d\d){75}/P
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 75 75) (re.++ (re.range "0" "2") (re.range "0" "9") (re.range "0" "9"))) (str.to.re "/P\x0a")))))
(check-sat)
