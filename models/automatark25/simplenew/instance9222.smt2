(declare-const X String)
; ^([7-9]{1})([0-9]{9})$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "7" "9")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
