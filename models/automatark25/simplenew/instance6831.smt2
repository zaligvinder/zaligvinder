(declare-const X String)
; ^((192\.168\.0\.)(1[7-9]|2[0-9]|3[0-2]))$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}192.168.0.") (re.union (re.++ (str.to_re "1") (re.range "7" "9")) (re.++ (str.to_re "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "2")))))))
(check-sat)
