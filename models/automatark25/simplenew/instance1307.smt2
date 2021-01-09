(declare-const X String)
; /\.gif\x3f[a-f0-9]{4,7}\x3d\d{6,8}$/U
(assert (str.in.re X (re.++ (str.to.re "/.gif?") ((_ re.loop 4 7) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "=") ((_ re.loop 6 8) (re.range "0" "9")) (str.to.re "/U\x0a"))))
(check-sat)
