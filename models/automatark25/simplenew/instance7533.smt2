(declare-const X String)
; ^([0-9]*|\d*\.\d{1}?\d*)$
(assert (str.in.re X (re.++ (re.union (re.* (re.range "0" "9")) (re.++ (re.* (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 1) (re.range "0" "9")) (re.* (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
