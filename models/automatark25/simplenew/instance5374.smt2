(declare-const X String)
; /^[a-z\d\x2b\x2f\x3d]{48,256}$/iP
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 48 256) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "/") (str.to.re "="))) (str.to.re "/iP\x0a")))))
(check-sat)
