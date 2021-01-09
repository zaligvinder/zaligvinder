(declare-const X String)
; ^0*(\d{1,3}(\.?\d{3})*)\-?([\dkK])$
(assert (not (str.in.re X (re.++ (re.* (str.to.re "0")) (re.opt (str.to.re "-")) (re.union (re.range "0" "9") (str.to.re "k") (str.to.re "K")) (str.to.re "\x0a") ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (re.opt (str.to.re ".")) ((_ re.loop 3 3) (re.range "0" "9"))))))))
(check-sat)
