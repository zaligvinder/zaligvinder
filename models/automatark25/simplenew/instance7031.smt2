(declare-const X String)
; X-Mailer\x3a\s+cyber@yahoo\x2EcomcuAgent
(assert (str.in.re X (re.++ (str.to.re "X-Mailer:\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "cyber@yahoo.comcuAgent\x0a"))))
(check-sat)
