(declare-const X String)
; /^\x2f[A-Z\d]{83}\x3d[A-Z\d]{10}$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 83 83) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "=") ((_ re.loop 10 10) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "/Ui\x0a")))))
(check-sat)
