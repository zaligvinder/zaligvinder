(declare-const X String)
; /bincode=Wz[0-9A-Za-z\x2b\x2f]{32}\x3d{0,2}$/Um
(assert (str.in.re X (re.++ (str.to.re "/bincode=Wz") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "+") (str.to.re "/"))) ((_ re.loop 0 2) (str.to.re "=")) (str.to.re "/Um\x0a"))))
(check-sat)
