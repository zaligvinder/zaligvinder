(declare-const X String)
; (\+1 )?\d{3} \d{3} \d{4}
(assert (str.in.re X (re.++ (re.opt (str.to.re "+1 ")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
