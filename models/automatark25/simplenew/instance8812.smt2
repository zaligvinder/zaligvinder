(declare-const X String)
; /z\x3D[A-Z0-9%]{700}/i
(assert (str.in.re X (re.++ (str.to.re "/z=") ((_ re.loop 700 700) (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re "%"))) (str.to.re "/i\x0a"))))
(check-sat)
