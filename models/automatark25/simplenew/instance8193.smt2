(declare-const X String)
; /^[a-z]\x3d[a-f\d]{80,140}$/Pi
(assert (str.in.re X (re.++ (str.to.re "/") (re.range "a" "z") (str.to.re "=") ((_ re.loop 80 140) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/Pi\x0a"))))
(check-sat)
