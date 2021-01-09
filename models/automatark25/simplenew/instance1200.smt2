(declare-const X String)
; ^((\d{0,1}[0-9](\.\d{0,1}[0-9])?)|(100))$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (re.range "0" "9")) (re.range "0" "9") (re.opt (re.++ (str.to.re ".") (re.opt (re.range "0" "9")) (re.range "0" "9")))) (str.to.re "100")) (str.to.re "\x0a"))))
(check-sat)
