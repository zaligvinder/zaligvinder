(declare-const X String)
; sql.*badurl\x2Egrandstreetinteractive\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "sql") (re.* re.allchar) (str.to.re "badurl.grandstreetinteractive.com\x0a"))))
; ^[0-9]{6}
(assert (str.in.re X (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
