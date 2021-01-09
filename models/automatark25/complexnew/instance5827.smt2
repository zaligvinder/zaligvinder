(declare-const X String)
; [\x80-\xFF]
(assert (not (str.in.re X (re.++ (re.range "\x80" "\xff") (str.to.re "\x0a")))))
; ^[A-Z][a-z]+((e(m|ng)|str)a)$
(assert (str.in.re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to.re "\x0a") (re.union (re.++ (str.to.re "e") (re.union (str.to.re "m") (str.to.re "ng"))) (str.to.re "str")) (str.to.re "a"))))
(check-sat)
