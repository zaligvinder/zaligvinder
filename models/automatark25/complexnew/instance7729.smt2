(declare-const X String)
; ^(0\.|([1-9]([0-9]+)?)\.){3}(0|([1-9]([0-9]+)?)){1}$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.union (str.to.re "0.") (re.++ (str.to.re ".") (re.range "1" "9") (re.opt (re.+ (re.range "0" "9")))))) ((_ re.loop 1 1) (re.union (str.to.re "0") (re.++ (re.range "1" "9") (re.opt (re.+ (re.range "0" "9")))))) (str.to.re "\x0a")))))
; ^0?(5[024])(\-)?\d{7}$
(assert (str.in.re X (re.++ (re.opt (str.to.re "0")) (re.opt (str.to.re "-")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a5") (re.union (str.to.re "0") (str.to.re "2") (str.to.re "4")))))
(check-sat)
