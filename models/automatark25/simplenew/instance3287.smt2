(declare-const X String)
; ^[13][a-zA-Z0-9]{26,33}$
(assert (str.in.re X (re.++ (re.union (str.to.re "1") (str.to.re "3")) ((_ re.loop 26 33) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
