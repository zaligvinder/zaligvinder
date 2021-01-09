(declare-const X String)
; www\x2Ecameup\x2EcomNetTracker
(assert (not (str.in.re X (str.to.re "www.cameup.com\x13NetTracker\x0a"))))
; Points\d+Host\x3a\dBasicwww\x2Ewebcruiser\x2Ecc
(assert (not (str.in.re X (re.++ (str.to.re "Points") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.range "0" "9") (str.to.re "Basicwww.webcruiser.cc\x0a")))))
(check-sat)
