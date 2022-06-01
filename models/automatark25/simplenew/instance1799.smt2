(declare-const X String)
; ZC-Bridge\d+JMail\d+GENERAL_PARAM2
(assert (not (str.in_re X (re.++ (str.to_re "ZC-Bridge") (re.+ (re.range "0" "9")) (str.to_re "JMail") (re.+ (re.range "0" "9")) (str.to_re "GENERAL_PARAM2\u{a}")))))
(check-sat)
