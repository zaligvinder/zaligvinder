(declare-const X String)
; /^(8-?|\+?7-?)?(\(?\d{3}\)?)-?(\d-?){6}\d$/
(assert (str.in.re X (re.++ (str.to.re "/") (re.opt (re.union (re.++ (str.to.re "8") (re.opt (str.to.re "-"))) (re.++ (re.opt (str.to.re "+")) (str.to.re "7") (re.opt (str.to.re "-"))))) (re.opt (str.to.re "-")) ((_ re.loop 6 6) (re.++ (re.range "0" "9") (re.opt (str.to.re "-")))) (re.range "0" "9") (str.to.re "/\x0a") (re.opt (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re ")")))))
(check-sat)
