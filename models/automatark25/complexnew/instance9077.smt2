(declare-const X String)
; /filename=[^\n]*\x2esmi/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".smi/i\x0a"))))
; The company delivers cakes and also online send mothers  day flowers to Delhi.
(assert (str.in.re X (re.++ (str.to.re "The company delivers cakes and also online send mothers  day flowers to Delhi") re.allchar (str.to.re "\x0a"))))
; ^0[23489]{1}(\-)?[^0\D]{1}\d{6}$
(assert (not (str.in.re X (re.++ (str.to.re "0") ((_ re.loop 1 1) (re.union (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "8") (str.to.re "9"))) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.union (str.to.re "0") (re.comp (re.range "0" "9")))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
