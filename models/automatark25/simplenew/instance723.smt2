(declare-const X String)
; track\s+community\d+4\x2e8\x2e4www\x2Emaxifiles\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "track") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "community") (re.+ (re.range "0" "9")) (str.to.re "4.8.4www.maxifiles.com\x0a")))))
(check-sat)
