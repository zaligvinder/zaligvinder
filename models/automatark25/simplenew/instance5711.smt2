(declare-const X String)
; ^((\d){3})(-)?(\d){2}(-)?(\d){4}(A|B[1-7]?|M|T|C[1-4]|D)$
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (re.union (str.to.re "A") (re.++ (str.to.re "B") (re.opt (re.range "1" "7"))) (str.to.re "M") (str.to.re "T") (re.++ (str.to.re "C") (re.range "1" "4")) (str.to.re "D")) (str.to.re "\x0a"))))
(check-sat)
