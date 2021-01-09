(declare-const X String)
; ^(-|\+)?(((100|((0|[1-9]{1,2})(\.[0-9]+)?)))|(\.[0-9]+))%?$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.union (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))) (str.to.re "100") (re.++ (re.union (str.to.re "0") ((_ re.loop 1 2) (re.range "1" "9"))) (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))))) (re.opt (str.to.re "%")) (str.to.re "\x0a")))))
(check-sat)
