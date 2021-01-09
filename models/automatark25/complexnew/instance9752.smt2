(declare-const X String)
; ^([1][12]|[0]?[1-9])[\/-]([3][01]|[12]\d|[0]?[1-9])[\/-](\d{4}|\d{2})$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "1") (re.union (str.to.re "1") (str.to.re "2"))) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9"))) (re.union (str.to.re "/") (str.to.re "-")) (re.union (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1"))) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9"))) (re.union (str.to.re "/") (str.to.re "-")) (re.union ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9"))) (str.to.re "\x0a")))))
; ^[-+]?\d+(\.\d{2})?$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
