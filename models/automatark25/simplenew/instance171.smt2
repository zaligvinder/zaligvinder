(declare-const X String)
; X-Mailer\x3a[^\n\r]*Host\x3A\s+cyber@yahoo\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "X-Mailer:\x13") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "cyber@yahoo.com\x0a")))))
(check-sat)
