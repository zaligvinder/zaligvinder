(declare-const X String)
; ((\+351|00351|351)?)(2\d{1}|(9(3|6|2|1)))\d{7}
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "+351") (str.to.re "00351") (str.to.re "351"))) (re.union (re.++ (str.to.re "2") ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to.re "9") (re.union (str.to.re "3") (str.to.re "6") (str.to.re "2") (str.to.re "1")))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
; [ \t]+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re " ") (str.to.re "\x09"))) (str.to.re "\x0a")))))
(check-sat)
