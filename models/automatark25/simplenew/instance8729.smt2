(declare-const X String)
; (\d{4,6})
(assert (str.in.re X (re.++ ((_ re.loop 4 6) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
