(declare-const X String)
; ^R(\d){8}
(assert (not (str.in.re X (re.++ (str.to.re "R") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
; X-Mailer\x3a[^\n\r]*Host\x3A\s+cyber@yahoo\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "X-Mailer:\x13") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "cyber@yahoo.com\x0a"))))
(check-sat)
