(declare-const X String)
; ^[+]\d{1,2}\(\d{2,3}\)\d{6,8}(\#\d{1,10})?$
(assert (not (str.in.re X (re.++ (str.to.re "+") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "(") ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ")") ((_ re.loop 6 8) (re.range "0" "9")) (re.opt (re.++ (str.to.re "#") ((_ re.loop 1 10) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
