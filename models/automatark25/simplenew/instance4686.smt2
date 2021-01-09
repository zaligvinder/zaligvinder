(declare-const X String)
; ^\$?\d+(\.(\d{2}))?$
(assert (str.in.re X (re.++ (re.opt (str.to.re "$")) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
