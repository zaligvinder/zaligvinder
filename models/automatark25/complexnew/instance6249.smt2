(declare-const X String)
; (CY-?)?[0-9]{8}[A-Z]
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "CY") (re.opt (str.to.re "-")))) ((_ re.loop 8 8) (re.range "0" "9")) (re.range "A" "Z") (str.to.re "\x0a"))))
; ^[0-9]*(\.)?[0-9]+$
(assert (not (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
