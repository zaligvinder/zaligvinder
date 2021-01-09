(declare-const X String)
; (LT-?)?([0-9]{9}|[0-9]{12})
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "LT") (re.opt (str.to.re "-")))) (re.union ((_ re.loop 9 9) (re.range "0" "9")) ((_ re.loop 12 12) (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
