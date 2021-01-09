(declare-const X String)
; ^([12]?[0-9]|3[01])$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (re.union (str.to.re "1") (str.to.re "2"))) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (str.to.re "\x0a"))))
(check-sat)
