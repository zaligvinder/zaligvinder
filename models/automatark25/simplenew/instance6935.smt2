(declare-const X String)
; ^(\+27|27)?(\()?0?([7][1-9]|[8][2-4])(\))?( |-|\.|_)?(\d{3})( |-|\.|_)?(\d{4})
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "+27") (str.to.re "27"))) (re.opt (str.to.re "(")) (re.opt (str.to.re "0")) (re.union (re.++ (str.to.re "7") (re.range "1" "9")) (re.++ (str.to.re "8") (re.range "2" "4"))) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re " ") (str.to.re "-") (str.to.re ".") (str.to.re "_"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-") (str.to.re ".") (str.to.re "_"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
