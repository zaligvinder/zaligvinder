(declare-const X String)
; (^\d{9}[V|v|x|X]$)
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 9 9) (re.range "0" "9")) (re.union (str.to.re "V") (str.to.re "|") (str.to.re "v") (str.to.re "x") (str.to.re "X")))))
(check-sat)
