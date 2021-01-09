(declare-const X String)
; www\x2Eweepee\x2Ecom\s+www\x2Ewebfringe\x2Ecomwww\.123mania\.com\x2F0409
(assert (not (str.in.re X (re.++ (str.to.re "www.weepee.com\x1b") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.webfringe.comwww.123mania.com/0409\x0a")))))
(check-sat)
