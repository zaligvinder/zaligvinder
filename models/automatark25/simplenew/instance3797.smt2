(declare-const X String)
; ^([0-7]{3})$
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "0" "7")) (str.to.re "\x0a"))))
(check-sat)
