(declare-const X String)
; ^([0-1]?[0-9]{1}/[0-3]?[0-9]{1}/20[0-9]{2})$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (re.range "0" "1")) ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "/") (re.opt (re.range "0" "3")) ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "/20") ((_ re.loop 2 2) (re.range "0" "9")))))
(check-sat)
