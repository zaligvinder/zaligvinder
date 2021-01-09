(declare-const X String)
; (:[a-z]{1}[a-z1-9\$#_]*){1,31}
(assert (str.in.re X (re.++ ((_ re.loop 1 31) (re.++ (str.to.re ":") ((_ re.loop 1 1) (re.range "a" "z")) (re.* (re.union (re.range "a" "z") (re.range "1" "9") (str.to.re "$") (str.to.re "#") (str.to.re "_"))))) (str.to.re "\x0a"))))
(check-sat)
