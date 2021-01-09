(declare-const X String)
; /^\/lists\/\d{20}$/U
(assert (str.in.re X (re.++ (str.to.re "//lists/") ((_ re.loop 20 20) (re.range "0" "9")) (str.to.re "/U\x0a"))))
(check-sat)
