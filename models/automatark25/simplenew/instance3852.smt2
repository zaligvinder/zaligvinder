(declare-const X String)
; ^((0?[1-9])|((1|2)[0-9])|30|31)$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (str.to.re "30") (str.to.re "31")) (str.to.re "\x0a"))))
(check-sat)
