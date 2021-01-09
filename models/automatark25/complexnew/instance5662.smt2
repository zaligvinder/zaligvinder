(declare-const X String)
; ^[0-9](\.[0-9]+)?$
(assert (str.in.re X (re.++ (re.range "0" "9") (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))) (str.to.re "\x0a"))))
; ^[0-9]{8}$
(assert (str.in.re X (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
