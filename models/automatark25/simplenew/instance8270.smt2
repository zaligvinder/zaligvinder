(declare-const X String)
; ^([0-9]{2})(00[1-9]|0[1-9][0-9]|[1-2][0-9][0-9]|3[0-5][0-9]|36[0-6])$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.++ (str.to.re "00") (re.range "1" "9")) (re.++ (str.to.re "0") (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "2") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "5") (re.range "0" "9")) (re.++ (str.to.re "36") (re.range "0" "6"))) (str.to.re "\x0a"))))
(check-sat)
