(declare-const X String)
; /^\x2f[a-z0-9]{51}$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 51 51) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "/Ui\x0a")))))
(check-sat)
