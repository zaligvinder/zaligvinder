(declare-const X String)
; \d{3}-\d{6}
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
