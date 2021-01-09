(declare-const X String)
; ^([4]{1})([0-9]{12,15})$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re "4")) ((_ re.loop 12 15) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
