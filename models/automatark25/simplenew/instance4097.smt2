(declare-const X String)
; ^(\d{1}|\d{2}|\d{3})(\.\d{3})*?$
(assert (str.in.re X (re.++ (re.union ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.* (re.++ (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
