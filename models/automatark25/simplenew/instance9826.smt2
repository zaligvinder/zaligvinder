(declare-const X String)
; ((PL|SK)-?)?[0-9]{10}
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "PL") (str.to.re "SK")) (re.opt (str.to.re "-")))) ((_ re.loop 10 10) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
