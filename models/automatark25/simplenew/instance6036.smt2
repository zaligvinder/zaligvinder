(declare-const X String)
; /^\x2f[0-9]{4,10}$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 4 10) (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
(check-sat)
