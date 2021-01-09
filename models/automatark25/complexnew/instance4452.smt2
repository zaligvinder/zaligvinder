(declare-const X String)
; ^0?[0-9]?[0-9]$|^(100)$
(assert (not (str.in.re X (re.union (re.++ (re.opt (str.to.re "0")) (re.opt (re.range "0" "9")) (re.range "0" "9")) (str.to.re "100\x0a")))))
; ((\(\d{3,4}\)|\d{3,4}-)\d{4,9}(-\d{1,5}|\d{0}))|(\d{4,12})
(assert (str.in.re X (re.union (re.++ (re.union (re.++ (str.to.re "(") ((_ re.loop 3 4) (re.range "0" "9")) (str.to.re ")")) (re.++ ((_ re.loop 3 4) (re.range "0" "9")) (str.to.re "-"))) ((_ re.loop 4 9) (re.range "0" "9")) (re.union (re.++ (str.to.re "-") ((_ re.loop 1 5) (re.range "0" "9"))) ((_ re.loop 0 0) (re.range "0" "9")))) (re.++ ((_ re.loop 4 12) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
