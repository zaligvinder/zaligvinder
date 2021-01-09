(declare-const X String)
; /^\x2F\d{10}$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 10 10) (re.range "0" "9")) (str.to.re "/U\x0a")))))
(check-sat)
