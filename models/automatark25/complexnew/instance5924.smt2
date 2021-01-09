(declare-const X String)
; /\x2fb\x2fshoe\x2f[0-9]{3,5}$/U
(assert (str.in.re X (re.++ (str.to.re "//b/shoe/") ((_ re.loop 3 5) (re.range "0" "9")) (str.to.re "/U\x0a"))))
; /^\/\d{8,11}\/1[34]\d{8}\.pdf$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 8 11) (re.range "0" "9")) (str.to.re "/1") (re.union (str.to.re "3") (str.to.re "4")) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re ".pdf/U\x0a"))))
(check-sat)
