(declare-const X String)
; /^\x2f\x3fptrxcz\x5f[a-zA-Z0-9]{30}$/Ui
(assert (str.in.re X (re.++ (str.to.re "//?ptrxcz_") ((_ re.loop 30 30) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "/Ui\x0a"))))
(check-sat)
