(declare-const X String)
; /new (java|org)/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/new ") (re.union (str.to.re "java") (str.to.re "org")) (str.to.re "/Ui\x0a")))))
; track\s+community\d+4\x2e8\x2e4www\x2Emaxifiles\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "track") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "community") (re.+ (re.range "0" "9")) (str.to.re "4.8.4www.maxifiles.com\x0a"))))
; ^[89]\d{7}$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "8") (str.to.re "9")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^R(\d){8}
(assert (not (str.in.re X (re.++ (str.to.re "R") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
