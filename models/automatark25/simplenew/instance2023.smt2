(declare-const X String)
; ^\d{10}$
(assert (str.in.re X (re.++ ((_ re.loop 10 10) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
