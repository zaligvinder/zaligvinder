(declare-const X String)
; www\x2Eonlinecasinoextra\x2Ecom\s+
(assert (str.in.re X (re.++ (str.to.re "www.onlinecasinoextra.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
(check-sat)
