(declare-const X String)
; ^(2[0-3]|[01]?[0-9]):([0-5]?[0-9]):([0-5]?[0-9])$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "2") (re.range "0" "3")) (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.range "0" "9"))) (str.to.re "::\x0a") (re.opt (re.range "0" "5")) (re.range "0" "9") (re.opt (re.range "0" "5")) (re.range "0" "9"))))
(check-sat)
