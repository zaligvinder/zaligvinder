(declare-const X String)
; 3A\s+URLBlazeHost\x3Atrackhjhgquqssq\x2fpjm
(assert (str.in.re X (re.++ (str.to.re "3A") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "URLBlazeHost:trackhjhgquqssq/pjm\x0a"))))
; Points\d+Host\x3a\dBasicwww\x2Ewebcruiser\x2Ecc
(assert (str.in.re X (re.++ (str.to.re "Points") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.range "0" "9") (str.to.re "Basicwww.webcruiser.cc\x0a"))))
(check-sat)
