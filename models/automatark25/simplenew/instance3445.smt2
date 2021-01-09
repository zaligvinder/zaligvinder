(declare-const X String)
; ^[-+]?\d+([.,]\d{0,2}){0,1}$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.+ (re.range "0" "9")) (re.opt (re.++ (re.union (str.to.re ".") (str.to.re ",")) ((_ re.loop 0 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
