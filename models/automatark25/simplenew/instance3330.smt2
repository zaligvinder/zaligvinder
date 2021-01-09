(declare-const X String)
; (^\d{5}$)|(^\d{5}-\d{4}$)
(assert (str.in.re X (re.union ((_ re.loop 5 5) (re.range "0" "9")) (re.++ (str.to.re "\x0a") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9"))))))
(check-sat)
