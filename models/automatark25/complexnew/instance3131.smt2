(declare-const X String)
; ^([9]{1})([234789]{1})([0-9]{8})$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re "9")) ((_ re.loop 1 1) (re.union (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "7") (str.to.re "8") (str.to.re "9"))) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^(0|([1-9]\d{0,3}|[1-5]\d{4}|[6][0-5][0-5]([0-2]\d|[3][0-5])))$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "0") (re.++ (re.range "1" "9") ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.range "1" "5") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to.re "6") (re.range "0" "5") (re.range "0" "5") (re.union (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "5"))))) (str.to.re "\x0a")))))
(check-sat)
