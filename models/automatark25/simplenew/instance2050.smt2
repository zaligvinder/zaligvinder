(declare-const X String)
; ^(966)(5)[0-9]{8}$
(assert (str.in.re X (re.++ (str.to.re "9665") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
