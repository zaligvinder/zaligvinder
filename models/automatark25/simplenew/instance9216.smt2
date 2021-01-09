(declare-const X String)
; ^\+?972(\-)?0?[23489]{1}(\-)?[^0\D]{1}\d{6}$
(assert (str.in.re X (re.++ (re.opt (str.to.re "+")) (str.to.re "972") (re.opt (str.to.re "-")) (re.opt (str.to.re "0")) ((_ re.loop 1 1) (re.union (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "8") (str.to.re "9"))) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.union (str.to.re "0") (re.comp (re.range "0" "9")))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
