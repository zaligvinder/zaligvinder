(declare-const X String)
; ^((00|\+)49)?(0?1[5-7][0-9]{1,})$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "00") (str.to.re "+")) (str.to.re "49"))) (str.to.re "\x0a") (re.opt (str.to.re "0")) (str.to.re "1") (re.range "5" "7") (re.+ (re.range "0" "9"))))))
(check-sat)
