(declare-const X String)
; /z\d{1,3}/Pi
(assert (not (str.in.re X (re.++ (str.to.re "/z") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "/Pi\x0a")))))
(check-sat)
