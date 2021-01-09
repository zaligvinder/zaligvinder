(declare-const X String)
; ^((8|\+38)-?)?(\(?044\)?)?-?\d{3}-?\d{2}-?\d{2}$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "8") (str.to.re "+38")) (re.opt (str.to.re "-")))) (re.opt (re.++ (re.opt (str.to.re "(")) (str.to.re "044") (re.opt (str.to.re ")")))) (re.opt (str.to.re "-")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
