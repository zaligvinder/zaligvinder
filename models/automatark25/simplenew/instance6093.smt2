(declare-const X String)
; ^[A-Z]\d{2}(\.\d){0,1}$
(assert (str.in.re X (re.++ (re.range "A" "Z") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
