(declare-const X String)
; ^((192\.168\.0\.)(1[7-9]|2[0-9]|3[0-2]))$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a192.168.0.") (re.union (re.++ (str.to.re "1") (re.range "7" "9")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "2")))))))
(check-sat)
