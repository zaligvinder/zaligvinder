(declare-const X String)
; /^\/\d{4}\/\d{7}$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "/U\x0a"))))
(check-sat)
