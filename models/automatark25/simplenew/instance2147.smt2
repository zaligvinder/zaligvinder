(declare-const X String)
; /(00356)?(99|79|77|21|27|22|25)[0-9]{6}/g
(assert (str.in.re X (re.++ (str.to.re "/") (re.opt (str.to.re "00356")) (re.union (str.to.re "99") (str.to.re "79") (str.to.re "77") (str.to.re "21") (str.to.re "27") (str.to.re "22") (str.to.re "25")) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "/g\x0a"))))
(check-sat)
