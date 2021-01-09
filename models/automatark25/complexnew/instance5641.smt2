(declare-const X String)
; ^[2-9]\d{2}-\d{3}-\d{4}$
(assert (str.in.re X (re.++ (re.range "2" "9") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^07[789]-\d{7}$
(assert (str.in.re X (re.++ (str.to.re "07") (re.union (str.to.re "7") (str.to.re "8") (str.to.re "9")) (str.to.re "-") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
