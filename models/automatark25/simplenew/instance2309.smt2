(declare-const X String)
; ^\$?\d{1,3}(,?\d{3})*(\.\d{1,2})?$
(assert (str.in.re X (re.++ (re.opt (str.to.re "$")) ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (re.opt (str.to.re ",")) ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
