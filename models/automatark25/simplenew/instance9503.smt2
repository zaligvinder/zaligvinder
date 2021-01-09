(declare-const X String)
; config\x2E180solutions\x2Ecom\dStable\s+Host\x3a\x7D\x7C
(assert (str.in.re X (re.++ (str.to.re "config.180solutions.com") (re.range "0" "9") (str.to.re "Stable") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:}|\x0a"))))
(check-sat)
