(declare-const X String)
; www\x2e2-seek\x2ecom\x2fsearch\s+TPSystem
(assert (str.in.re X (re.++ (str.to.re "www.2-seek.com/search") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "TPSystem\x0a"))))
(check-sat)
