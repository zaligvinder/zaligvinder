(declare-const X String)
; ^(\+27|27|0)[0-9]{2}( |-)?[0-9]{3}( |-)?[0-9]{4}( |-)?(x[0-9]+)?(ext[0-9]+)?
(assert (not (str.in_re X (re.++ (re.union (str.to_re "+27") (str.to_re "27") (str.to_re "0")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) (re.opt (re.++ (str.to_re "x") (re.+ (re.range "0" "9")))) (re.opt (re.++ (str.to_re "ext") (re.+ (re.range "0" "9")))) (str.to_re "\u{a}")))))
(check-sat)
