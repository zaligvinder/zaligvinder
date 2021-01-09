(declare-const X String)
; ^((\d){3})(-)?(\d){2}(-)?(\d){4}(A|B[1-7]?|M|T|C[1-4]|D)$
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (re.union (str.to.re "A") (re.++ (str.to.re "B") (re.opt (re.range "1" "7"))) (str.to.re "M") (str.to.re "T") (re.++ (str.to.re "C") (re.range "1" "4")) (str.to.re "D")) (str.to.re "\x0a"))))
; ^(([0-1]?[0-9])|([2][0-3])):([0-5]?[0-9])(:([0-5]?[0-9]))?$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":") (re.opt (re.++ (str.to.re ":") (re.opt (re.range "0" "5")) (re.range "0" "9"))) (str.to.re "\x0a") (re.opt (re.range "0" "5")) (re.range "0" "9"))))
(check-sat)
