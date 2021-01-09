(declare-const X String)
; Pleasewww\x2Ewebfringe\x2Ecom\x03\x00\x1c\x00\x00\x00\x00\x00\x01Furax
(assert (not (str.in.re X (str.to.re "Pleasewww.webfringe.com\x03\x00\x1c\x00\x00\x00\x00\x00\x01Furax\x0a"))))
(check-sat)
