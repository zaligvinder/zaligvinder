(declare-const X String)
; ([0-9]{11}$)|(^[7-9][0-9]{9}$)
(assert (str.in.re X (re.union ((_ re.loop 11 11) (re.range "0" "9")) (re.++ (str.to.re "\x0a") (re.range "7" "9") ((_ re.loop 9 9) (re.range "0" "9"))))))
(check-sat)
