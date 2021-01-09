(declare-const X String)
; ^(97(8|9))?\d{9}(\d|X)$
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "97") (re.union (str.to.re "8") (str.to.re "9")))) ((_ re.loop 9 9) (re.range "0" "9")) (re.union (re.range "0" "9") (str.to.re "X")) (str.to.re "\x0a"))))
(check-sat)
