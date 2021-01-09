(declare-const X String)
; ^[a-zA-Z0-9]{1,20}$
(assert (str.in.re X (re.++ ((_ re.loop 1 20) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
