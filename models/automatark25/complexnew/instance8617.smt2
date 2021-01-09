(declare-const X String)
; ^(([0-9]{2})|([a-zA-Z][0-9])|([a-zA-Z]{2}))[0-9]{6}$
(assert (str.in.re X (re.++ (re.union ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.range "0" "9")) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))
; /bincode=Wz[0-9A-Za-z\x2b\x2f]{32}\x3d{0,2}$/Um
(assert (not (str.in.re X (re.++ (str.to.re "/bincode=Wz") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "+") (str.to.re "/"))) ((_ re.loop 0 2) (str.to.re "=")) (str.to.re "/Um\x0a")))))
(check-sat)
