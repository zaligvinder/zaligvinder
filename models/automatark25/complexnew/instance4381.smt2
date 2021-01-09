(declare-const X String)
; sidesearch\.dropspam\.com\s+Strip-Player\s+
(assert (not (str.in.re X (re.++ (str.to.re "sidesearch.dropspam.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Strip-Player\x1b") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
; as\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=.*X-Mailer\x3A
(assert (str.in.re X (re.++ (str.to.re "as.starware.com/dp/search?x=") (re.* re.allchar) (str.to.re "X-Mailer:\x13\x0a"))))
(check-sat)
