(declare-const X String)
; /^[a-z]\x3D[0-9a-z]{100}$/Pm
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.range "a" "z") (str.to.re "=") ((_ re.loop 100 100) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to.re "/Pm\x0a")))))
(check-sat)
