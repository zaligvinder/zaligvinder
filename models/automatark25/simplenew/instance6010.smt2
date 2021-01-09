(declare-const X String)
; ^[0-9]{6}
(assert (str.in.re X (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
