(declare-const X String)
; /^(\/\d{8,11})?(\/\d)?\/1[34]\d{8}\.htm$/U
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.opt (re.++ (str.to.re "/") ((_ re.loop 8 11) (re.range "0" "9")))) (re.opt (re.++ (str.to.re "/") (re.range "0" "9"))) (str.to.re "/1") (re.union (str.to.re "3") (str.to.re "4")) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re ".htm/U\x0a")))))
(check-sat)
