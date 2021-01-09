(declare-const X String)
; show\x2Eroogoo\x2Ecom\s+report\<\x2Ftitle\>Host\x3a\.fcgi
(assert (str.in.re X (re.++ (str.to.re "show.roogoo.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "report</title>Host:.fcgi\x0a"))))
(check-sat)
