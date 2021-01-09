(declare-const X String)
; ^((0*[0-1]?[0-9]{1,2}\.)|(0*((2[0-4][0-9])|(25[0-5]))\.)){3}((0*[0-1]?[0-9]{1,2})|(0*((2[0-4][0-9])|(25[0-5]))))$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.union (re.++ (re.* (str.to.re "0")) (re.opt (re.range "0" "1")) ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re ".")) (re.++ (re.* (str.to.re "0")) (re.union (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) (str.to.re ".")))) (re.union (re.++ (re.* (str.to.re "0")) (re.opt (re.range "0" "1")) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (re.* (str.to.re "0")) (re.union (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))))) (str.to.re "\x0a")))))
(check-sat)
