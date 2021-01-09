(declare-const X String)
; /^\/\?[a-z0-9]{2}\=[a-z1-9]{100}/siU
(assert (str.in.re X (re.++ (str.to.re "//?") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "=") ((_ re.loop 100 100) (re.union (re.range "a" "z") (re.range "1" "9"))) (str.to.re "/siU\x0a"))))
(check-sat)
