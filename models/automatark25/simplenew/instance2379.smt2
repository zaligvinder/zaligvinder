(declare-const X String)
; /\x2fkills\x2etxt\x3f(t\d|p)\x3d\d{6}$/U
(assert (not (str.in.re X (re.++ (str.to.re "//kills.txt?") (re.union (re.++ (str.to.re "t") (re.range "0" "9")) (str.to.re "p")) (str.to.re "=") ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "/U\x0a")))))
(check-sat)
