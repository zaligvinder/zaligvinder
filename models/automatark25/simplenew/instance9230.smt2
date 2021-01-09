(declare-const X String)
; ^[A-Z][a-z]+((e(m|ng)|str)a)$
(assert (str.in.re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to.re "\x0a") (re.union (re.++ (str.to.re "e") (re.union (str.to.re "m") (str.to.re "ng"))) (str.to.re "str")) (str.to.re "a"))))
(check-sat)
