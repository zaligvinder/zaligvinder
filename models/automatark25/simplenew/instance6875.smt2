(declare-const X String)
; ^\d(\.\d{1,2})?$
(assert (str.in.re X (re.++ (re.range "0" "9") (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
