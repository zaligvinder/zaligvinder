(declare-const X String)
; ^\d*\.?((25)|(50)|(5)|(75)|(0)|(00))?$
(assert (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.opt (re.union (str.to.re "25") (str.to.re "50") (str.to.re "5") (str.to.re "75") (str.to.re "0") (str.to.re "00"))) (str.to.re "\x0a"))))
; ^100(\.0{0,2}?)?$|^\d{0,2}(\.\d{0,2})?$
(assert (not (str.in.re X (re.union (re.++ (str.to.re "100") (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 2) (str.to.re "0"))))) (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 2) (re.range "0" "9")))) (str.to.re "\x0a"))))))
(check-sat)
