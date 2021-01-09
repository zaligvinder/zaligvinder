(declare-const X String)
; ^[+-]?[0-9]*\.?([0-9]?)*
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.* (re.opt (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
