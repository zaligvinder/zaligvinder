(declare-const X String)
; ^([1-9]{0,1})([0-9]{1})(\.[0-9])?$
(assert (str.in.re X (re.++ (re.opt (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
