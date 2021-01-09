(declare-const X String)
; ^(\d{2,3}|\(\d{2,3}\))[ ]?\d{3,4}[-]?\d{3,4}$
(assert (str.in.re X (re.++ (re.union ((_ re.loop 2 3) (re.range "0" "9")) (re.++ (str.to.re "(") ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ")"))) (re.opt (str.to.re " ")) ((_ re.loop 3 4) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 3 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; .+\.([^.]+)$
(assert (str.in.re X (re.++ (re.+ re.allchar) (str.to.re ".") (re.+ (re.comp (str.to.re "."))) (str.to.re "\x0a"))))
(check-sat)
