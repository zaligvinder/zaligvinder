(declare-const X String)
; cyber@yahoo\x2Ecom\s+Host\x3a\x7D\x7Crichfind\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "cyber@yahoo.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:}|richfind.com\x0a"))))
(check-sat)
