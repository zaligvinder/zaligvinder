(declare-const X String)
; (^[A-Za-z])|(\s)([A-Za-z])
(assert (str.in.re X (re.union (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.union (re.range "A" "Z") (re.range "a" "z")) (str.to.re "\x0a")) (re.range "A" "Z") (re.range "a" "z"))))
(check-sat)
