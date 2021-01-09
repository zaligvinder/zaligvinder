(declare-const X String)
; ^(\+27|27)?(\()?0?[87][23467](\))?( |-|\.|_)?(\d{3})( |-|\.|_)?(\d{4})
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "+27") (str.to.re "27"))) (re.opt (str.to.re "(")) (re.opt (str.to.re "0")) (re.union (str.to.re "8") (str.to.re "7")) (re.union (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "6") (str.to.re "7")) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re " ") (str.to.re "-") (str.to.re ".") (str.to.re "_"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-") (str.to.re ".") (str.to.re "_"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
