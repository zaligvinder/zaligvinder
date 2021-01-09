(declare-const X String)
; ^[+]447\d{9}$
(assert (not (str.in.re X (re.++ (str.to.re "+447") ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
