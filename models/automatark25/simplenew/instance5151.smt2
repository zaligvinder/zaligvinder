(declare-const X String)
; ver.*Black\s+CD\x2Furl=Host\x3anotification
(assert (not (str.in.re X (re.++ (str.to.re "ver") (re.* re.allchar) (str.to.re "Black") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "CD/url=Host:notification\x13\x0a")))))
(check-sat)
