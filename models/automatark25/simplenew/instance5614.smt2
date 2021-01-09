(declare-const X String)
; www\x2Esogou\x2Ecom\s+HWAE\+The\+password\+is\x3A
(assert (not (str.in.re X (re.++ (str.to.re "www.sogou.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HWAE+The+password+is:\x0a")))))
(check-sat)
