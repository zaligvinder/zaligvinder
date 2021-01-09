(declare-const X String)
; ^[0-9]{10}GBR[0-9]{7}[U,M,F]{1}[0-9]{9}$
(assert (str.in.re X (re.++ ((_ re.loop 10 10) (re.range "0" "9")) (str.to.re "GBR") ((_ re.loop 7 7) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re "U") (str.to.re ",") (str.to.re "M") (str.to.re "F"))) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^([A-z]{2}\d{7})|([A-z]{4}\d{10})$
(assert (not (str.in.re X (re.union (re.++ ((_ re.loop 2 2) (re.range "A" "z")) ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to.re "\x0a") ((_ re.loop 4 4) (re.range "A" "z")) ((_ re.loop 10 10) (re.range "0" "9")))))))
(check-sat)
