(declare-const X String)
; ^\$?\d+(\.(\d{2}))?$
(assert (str.in.re X (re.++ (re.opt (str.to.re "$")) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
; ^\d{4,4}[A-Z0-9]$
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.union (re.range "A" "Z") (re.range "0" "9")) (str.to.re "\x0a"))))
; (CZ-?)?[0-9]{8,10}
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "CZ") (re.opt (str.to.re "-")))) ((_ re.loop 8 10) (re.range "0" "9")) (str.to.re "\x0a"))))
; ((^\d{5}$)|(^\d{8}$))|(^\d{5}-\d{3}$)
(assert (str.in.re X (re.union (re.++ (str.to.re "\x0a") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9"))) ((_ re.loop 5 5) (re.range "0" "9")) ((_ re.loop 8 8) (re.range "0" "9")))))
(check-sat)
