(declare-const X String)
; ^[A-Za-z]$
(assert (str.in.re X (re.++ (re.union (re.range "A" "Z") (re.range "a" "z")) (str.to.re "\x0a"))))
(check-sat)
