(declare-const X String)
; ^[A-Za-z]$
(assert (str.in.re X (re.++ (re.union (re.range "A" "Z") (re.range "a" "z")) (str.to.re "\x0a"))))
; ^(\d{3}-\d{3}-\d{4})*$
(assert (not (str.in.re X (re.++ (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
