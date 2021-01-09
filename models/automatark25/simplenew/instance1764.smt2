(declare-const X String)
; ^((2[0-5][0-5]|1[\d][\d]|[\d][\d]|[\d])\.){3}(2[0-5][0-5]|1[\d][\d]|[\d][\d]|[\d])$
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.++ (re.union (re.++ (str.to.re "2") (re.range "0" "5") (re.range "0" "5")) (re.++ (str.to.re "1") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "0" "9")) (re.range "0" "9")) (str.to.re "."))) (re.union (re.++ (str.to.re "2") (re.range "0" "5") (re.range "0" "5")) (re.++ (str.to.re "1") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "0" "9")) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
