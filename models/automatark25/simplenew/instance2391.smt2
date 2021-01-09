(declare-const X String)
; (CZ-?)?[0-9]{8,10}
(assert (not (str.in.re X (re.++ (re.opt (re.++ (str.to.re "CZ") (re.opt (str.to.re "-")))) ((_ re.loop 8 10) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
