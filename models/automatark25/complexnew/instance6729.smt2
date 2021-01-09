(declare-const X String)
; Host\x3A\dwww\x2Etrustedsearch\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "www.trustedsearch.com\x0a")))))
; \x3Clogs\x40dummyserver\x2Ecom\x3E
(assert (not (str.in.re X (str.to.re "<logs@dummyserver.com>\x0a"))))
(check-sat)
