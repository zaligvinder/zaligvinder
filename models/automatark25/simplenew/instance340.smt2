(declare-const X String)
; ^\(0[1-9]{1}\)[0-9]{8}$
(assert (not (str.in.re X (re.++ (str.to.re "(0") ((_ re.loop 1 1) (re.range "1" "9")) (str.to.re ")") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
