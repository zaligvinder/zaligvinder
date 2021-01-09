(declare-const X String)
; ^0?(5[024])(\-)?\d{7}$
(assert (str.in.re X (re.++ (re.opt (str.to.re "0")) (re.opt (str.to.re "-")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a5") (re.union (str.to.re "0") (str.to.re "2") (str.to.re "4")))))
(check-sat)
