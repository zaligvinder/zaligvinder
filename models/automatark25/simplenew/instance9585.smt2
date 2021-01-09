(declare-const X String)
; ZC-Bridge\d+JMail\d+GENERAL_PARAM2
(assert (not (str.in.re X (re.++ (str.to.re "ZC-Bridge") (re.+ (re.range "0" "9")) (str.to.re "JMail") (re.+ (re.range "0" "9")) (str.to.re "GENERAL_PARAM2\x0a")))))
(check-sat)
