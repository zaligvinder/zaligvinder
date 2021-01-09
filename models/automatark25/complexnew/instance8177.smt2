(declare-const X String)
; com\dsearch\x2econduit\x2ecom\s+User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "com") (re.range "0" "9") (str.to.re "search.conduit.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:\x0a"))))
; \x7D\x7BOS\x3AsecurityUser-Agent\x3awww\x2Esogou\x2Ecom
(assert (not (str.in.re X (str.to.re "}{OS:securityUser-Agent:www.sogou.com\x0a"))))
(check-sat)
