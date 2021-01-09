(declare-const X String)
; \x3Clogs\x40dummyserver\x2Ecom\x3E
(assert (not (str.in.re X (str.to.re "<logs@dummyserver.com>\x0a"))))
(check-sat)
