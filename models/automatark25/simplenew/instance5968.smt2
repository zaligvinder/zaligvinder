(declare-const X String)
; (\d{2}\.\d{3}\.\d{3}\/\d{4}\-\d{2})|(\d{3}\.\d{3}\.\d{3}\-\d{2})
(assert (str.in.re X (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "\x0a") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9"))))))
(check-sat)
