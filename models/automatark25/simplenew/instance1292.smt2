(declare-const X String)
; quick\x2Eqsrch\x2Ecom\s+WinSession\s+Server\x00
(assert (not (str.in.re X (re.++ (str.to.re "quick.qsrch.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "WinSession") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Server\x00\x0a")))))
(check-sat)
